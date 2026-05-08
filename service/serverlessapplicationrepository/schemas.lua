

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.serverlessapplicationrepository"

local M = {}

M.__listOf__string = schema.new({ type = "list", list_member = prelude.String })

M.__listOfParameterDefinition = schema.new({ type = "list", list_member = M.ParameterDefinition })

M.__listOfCapability = schema.new({ type = "list", list_member = prelude.String })

M.__listOfParameterValue = schema.new({ type = "list", list_member = M.ParameterValue })

M.__listOfTag = schema.new({ type = "list", list_member = M.Tag })

M.__listOfApplicationPolicyStatement = schema.new({ type = "list", list_member = M.ApplicationPolicyStatement })

M.__listOfApplicationDependencySummary = schema.new({ type = "list", list_member = M.ApplicationDependencySummary })

M.__listOfApplicationSummary = schema.new({ type = "list", list_member = M.ApplicationSummary })

M.__listOfVersionSummary = schema.new({ type = "list", list_member = M.VersionSummary })

M.__listOfRollbackTrigger = schema.new({ type = "list", list_member = M.RollbackTrigger })

M.ApplicationDependencySummary = schema.new({
   id = id.from(_N, "ApplicationDependencySummary"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "ApplicationDependencySummary", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "applicationId" },
         },
      }),
      SemanticVersion = schema.new({
         id = id.from(_N, "ApplicationDependencySummary", "SemanticVersion"),
         type = "string",
         name = "SemanticVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "semanticVersion" },
         },
      }),
   },
})

M.ApplicationPolicyStatement = schema.new({
   id = id.from(_N, "ApplicationPolicyStatement"),
   type = "structure",
   members = {
      Actions = schema.new({
         id = id.from(_N, "ApplicationPolicyStatement", "Actions"),
         type = "list",
         name = "Actions",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "actions" },
         },
      }),
      PrincipalOrgIDs = schema.new({
         id = id.from(_N, "ApplicationPolicyStatement", "PrincipalOrgIDs"),
         type = "list",
         name = "PrincipalOrgIDs",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "principalOrgIDs" },
         },
      }),
      Principals = schema.new({
         id = id.from(_N, "ApplicationPolicyStatement", "Principals"),
         type = "list",
         name = "Principals",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "principals" },
         },
      }),
      StatementId = schema.new({
         id = id.from(_N, "ApplicationPolicyStatement", "StatementId"),
         type = "string",
         name = "StatementId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "statementId" },
         },
      }),
   },
})

M.ApplicationSummary = schema.new({
   id = id.from(_N, "ApplicationSummary"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "ApplicationSummary", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "applicationId" },
         },
      }),
      Author = schema.new({
         id = id.from(_N, "ApplicationSummary", "Author"),
         type = "string",
         name = "Author",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "author" },
         },
      }),
      CreationTime = schema.new({
         id = id.from(_N, "ApplicationSummary", "CreationTime"),
         type = "string",
         name = "CreationTime",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "creationTime" },
         },
      }),
      Description = schema.new({
         id = id.from(_N, "ApplicationSummary", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "description" },
         },
      }),
      HomePageUrl = schema.new({
         id = id.from(_N, "ApplicationSummary", "HomePageUrl"),
         type = "string",
         name = "HomePageUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "homePageUrl" },
         },
      }),
      Labels = schema.new({
         id = id.from(_N, "ApplicationSummary", "Labels"),
         type = "list",
         name = "Labels",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "labels" },
         },
      }),
      Name = schema.new({
         id = id.from(_N, "ApplicationSummary", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "name" },
         },
      }),
      SpdxLicenseId = schema.new({
         id = id.from(_N, "ApplicationSummary", "SpdxLicenseId"),
         type = "string",
         name = "SpdxLicenseId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "spdxLicenseId" },
         },
      }),
   },
})

M.ParameterDefinition = schema.new({
   id = id.from(_N, "ParameterDefinition"),
   type = "structure",
   members = {
      AllowedPattern = schema.new({
         id = id.from(_N, "ParameterDefinition", "AllowedPattern"),
         type = "string",
         name = "AllowedPattern",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "allowedPattern" },
         },
      }),
      AllowedValues = schema.new({
         id = id.from(_N, "ParameterDefinition", "AllowedValues"),
         type = "list",
         name = "AllowedValues",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "allowedValues" },
         },
      }),
      ConstraintDescription = schema.new({
         id = id.from(_N, "ParameterDefinition", "ConstraintDescription"),
         type = "string",
         name = "ConstraintDescription",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "constraintDescription" },
         },
      }),
      DefaultValue = schema.new({
         id = id.from(_N, "ParameterDefinition", "DefaultValue"),
         type = "string",
         name = "DefaultValue",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "defaultValue" },
         },
      }),
      Description = schema.new({
         id = id.from(_N, "ParameterDefinition", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "description" },
         },
      }),
      MaxLength = schema.new({
         id = id.from(_N, "ParameterDefinition", "MaxLength"),
         type = "integer",
         name = "MaxLength",
         target_id = prelude.Integer.id,
         traits = {
            [traits.JSON_NAME] = { name = "maxLength" },
         },
      }),
      MaxValue = schema.new({
         id = id.from(_N, "ParameterDefinition", "MaxValue"),
         type = "integer",
         name = "MaxValue",
         target_id = prelude.Integer.id,
         traits = {
            [traits.JSON_NAME] = { name = "maxValue" },
         },
      }),
      MinLength = schema.new({
         id = id.from(_N, "ParameterDefinition", "MinLength"),
         type = "integer",
         name = "MinLength",
         target_id = prelude.Integer.id,
         traits = {
            [traits.JSON_NAME] = { name = "minLength" },
         },
      }),
      MinValue = schema.new({
         id = id.from(_N, "ParameterDefinition", "MinValue"),
         type = "integer",
         name = "MinValue",
         target_id = prelude.Integer.id,
         traits = {
            [traits.JSON_NAME] = { name = "minValue" },
         },
      }),
      Name = schema.new({
         id = id.from(_N, "ParameterDefinition", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "name" },
         },
      }),
      NoEcho = schema.new({
         id = id.from(_N, "ParameterDefinition", "NoEcho"),
         type = "boolean",
         name = "NoEcho",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.JSON_NAME] = { name = "noEcho" },
         },
      }),
      ReferencedByResources = schema.new({
         id = id.from(_N, "ParameterDefinition", "ReferencedByResources"),
         type = "list",
         name = "ReferencedByResources",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "referencedByResources" },
         },
      }),
      Type = schema.new({
         id = id.from(_N, "ParameterDefinition", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "type" },
         },
      }),
   },
})

M.ParameterValue = schema.new({
   id = id.from(_N, "ParameterValue"),
   type = "structure",
   members = {
      Name = schema.new({
         id = id.from(_N, "ParameterValue", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "name" },
         },
      }),
      Value = schema.new({
         id = id.from(_N, "ParameterValue", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "value" },
         },
      }),
   },
})

M.RollbackTrigger = schema.new({
   id = id.from(_N, "RollbackTrigger"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "RollbackTrigger", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "arn" },
         },
      }),
      Type = schema.new({
         id = id.from(_N, "RollbackTrigger", "Type"),
         type = "string",
         name = "Type",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "type" },
         },
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
            [traits.JSON_NAME] = { name = "key" },
         },
      }),
      Value = schema.new({
         id = id.from(_N, "Tag", "Value"),
         type = "string",
         name = "Value",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "value" },
         },
      }),
   },
})

M.VersionSummary = schema.new({
   id = id.from(_N, "VersionSummary"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "VersionSummary", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "applicationId" },
         },
      }),
      CreationTime = schema.new({
         id = id.from(_N, "VersionSummary", "CreationTime"),
         type = "string",
         name = "CreationTime",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "creationTime" },
         },
      }),
      SemanticVersion = schema.new({
         id = id.from(_N, "VersionSummary", "SemanticVersion"),
         type = "string",
         name = "SemanticVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "semanticVersion" },
         },
      }),
      SourceCodeUrl = schema.new({
         id = id.from(_N, "VersionSummary", "SourceCodeUrl"),
         type = "string",
         name = "SourceCodeUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "sourceCodeUrl" },
         },
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
      ErrorCode = schema.new({
         id = id.from(_N, "BadRequestException", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "errorCode" },
         },
      }),
      Message = schema.new({
         id = id.from(_N, "BadRequestException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "message" },
         },
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
      ErrorCode = schema.new({
         id = id.from(_N, "ConflictException", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "errorCode" },
         },
      }),
      Message = schema.new({
         id = id.from(_N, "ConflictException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "message" },
         },
      }),
   },
})

M.CreateApplicationInput = schema.new({
   id = id.from(_N, "CreateApplicationRequest"),
   type = "structure",
   members = {
      Author = schema.new({
         id = id.from(_N, "CreateApplicationInput", "Author"),
         type = "string",
         name = "Author",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "author" },
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateApplicationInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "description" },
         },
      }),
      HomePageUrl = schema.new({
         id = id.from(_N, "CreateApplicationInput", "HomePageUrl"),
         type = "string",
         name = "HomePageUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "homePageUrl" },
         },
      }),
      Labels = schema.new({
         id = id.from(_N, "CreateApplicationInput", "Labels"),
         type = "list",
         name = "Labels",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "labels" },
         },
      }),
      LicenseBody = schema.new({
         id = id.from(_N, "CreateApplicationInput", "LicenseBody"),
         type = "string",
         name = "LicenseBody",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "licenseBody" },
         },
      }),
      LicenseUrl = schema.new({
         id = id.from(_N, "CreateApplicationInput", "LicenseUrl"),
         type = "string",
         name = "LicenseUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "licenseUrl" },
         },
      }),
      Name = schema.new({
         id = id.from(_N, "CreateApplicationInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "name" },
         },
      }),
      ReadmeBody = schema.new({
         id = id.from(_N, "CreateApplicationInput", "ReadmeBody"),
         type = "string",
         name = "ReadmeBody",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "readmeBody" },
         },
      }),
      ReadmeUrl = schema.new({
         id = id.from(_N, "CreateApplicationInput", "ReadmeUrl"),
         type = "string",
         name = "ReadmeUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "readmeUrl" },
         },
      }),
      SemanticVersion = schema.new({
         id = id.from(_N, "CreateApplicationInput", "SemanticVersion"),
         type = "string",
         name = "SemanticVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "semanticVersion" },
         },
      }),
      SourceCodeArchiveUrl = schema.new({
         id = id.from(_N, "CreateApplicationInput", "SourceCodeArchiveUrl"),
         type = "string",
         name = "SourceCodeArchiveUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "sourceCodeArchiveUrl" },
         },
      }),
      SourceCodeUrl = schema.new({
         id = id.from(_N, "CreateApplicationInput", "SourceCodeUrl"),
         type = "string",
         name = "SourceCodeUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "sourceCodeUrl" },
         },
      }),
      SpdxLicenseId = schema.new({
         id = id.from(_N, "CreateApplicationInput", "SpdxLicenseId"),
         type = "string",
         name = "SpdxLicenseId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "spdxLicenseId" },
         },
      }),
      TemplateBody = schema.new({
         id = id.from(_N, "CreateApplicationInput", "TemplateBody"),
         type = "string",
         name = "TemplateBody",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "templateBody" },
         },
      }),
      TemplateUrl = schema.new({
         id = id.from(_N, "CreateApplicationInput", "TemplateUrl"),
         type = "string",
         name = "TemplateUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "templateUrl" },
         },
      }),
   },
})

M.Version = schema.new({
   id = id.from(_N, "Version"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "Version", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "applicationId" },
         },
      }),
      CreationTime = schema.new({
         id = id.from(_N, "Version", "CreationTime"),
         type = "string",
         name = "CreationTime",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "creationTime" },
         },
      }),
      ParameterDefinitions = schema.new({
         id = id.from(_N, "Version", "ParameterDefinitions"),
         type = "list",
         name = "ParameterDefinitions",
         target_id = prelude.Document.id,
         list_member = M.ParameterDefinition,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "parameterDefinitions" },
         },
      }),
      RequiredCapabilities = schema.new({
         id = id.from(_N, "Version", "RequiredCapabilities"),
         type = "list",
         name = "RequiredCapabilities",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "requiredCapabilities" },
         },
      }),
      ResourcesSupported = schema.new({
         id = id.from(_N, "Version", "ResourcesSupported"),
         type = "boolean",
         name = "ResourcesSupported",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "resourcesSupported" },
         },
      }),
      SemanticVersion = schema.new({
         id = id.from(_N, "Version", "SemanticVersion"),
         type = "string",
         name = "SemanticVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "semanticVersion" },
         },
      }),
      SourceCodeArchiveUrl = schema.new({
         id = id.from(_N, "Version", "SourceCodeArchiveUrl"),
         type = "string",
         name = "SourceCodeArchiveUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "sourceCodeArchiveUrl" },
         },
      }),
      SourceCodeUrl = schema.new({
         id = id.from(_N, "Version", "SourceCodeUrl"),
         type = "string",
         name = "SourceCodeUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "sourceCodeUrl" },
         },
      }),
      TemplateUrl = schema.new({
         id = id.from(_N, "Version", "TemplateUrl"),
         type = "string",
         name = "TemplateUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "templateUrl" },
         },
      }),
   },
})

M.CreateApplicationOutput = schema.new({
   id = id.from(_N, "CreateApplicationResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "applicationId" },
         },
      }),
      Author = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "Author"),
         type = "string",
         name = "Author",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "author" },
         },
      }),
      CreationTime = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "CreationTime"),
         type = "string",
         name = "CreationTime",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "creationTime" },
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "description" },
         },
      }),
      HomePageUrl = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "HomePageUrl"),
         type = "string",
         name = "HomePageUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "homePageUrl" },
         },
      }),
      IsVerifiedAuthor = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "IsVerifiedAuthor"),
         type = "boolean",
         name = "IsVerifiedAuthor",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.JSON_NAME] = { name = "isVerifiedAuthor" },
         },
      }),
      Labels = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "Labels"),
         type = "list",
         name = "Labels",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "labels" },
         },
      }),
      LicenseUrl = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "LicenseUrl"),
         type = "string",
         name = "LicenseUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "licenseUrl" },
         },
      }),
      Name = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "name" },
         },
      }),
      ReadmeUrl = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "ReadmeUrl"),
         type = "string",
         name = "ReadmeUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "readmeUrl" },
         },
      }),
      SpdxLicenseId = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "SpdxLicenseId"),
         type = "string",
         name = "SpdxLicenseId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "spdxLicenseId" },
         },
      }),
      VerifiedAuthorUrl = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "VerifiedAuthorUrl"),
         type = "string",
         name = "VerifiedAuthorUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "verifiedAuthorUrl" },
         },
      }),
      Version = schema.new({
         id = id.from(_N, "CreateApplicationOutput", "Version"),
         type = "structure",
         name = "Version",
         target_id = id.from(_N, "Version"),
         target = M.Version,
         traits = {
            [traits.JSON_NAME] = { name = "version" },
         },
      }),
   },
})

M.ForbiddenException = schema.new({
   id = id.from(_N, "ForbiddenException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      ErrorCode = schema.new({
         id = id.from(_N, "ForbiddenException", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "errorCode" },
         },
      }),
      Message = schema.new({
         id = id.from(_N, "ForbiddenException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "message" },
         },
      }),
   },
})

M.InternalServerErrorException = schema.new({
   id = id.from(_N, "InternalServerErrorException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      ErrorCode = schema.new({
         id = id.from(_N, "InternalServerErrorException", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "errorCode" },
         },
      }),
      Message = schema.new({
         id = id.from(_N, "InternalServerErrorException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "message" },
         },
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
      ErrorCode = schema.new({
         id = id.from(_N, "TooManyRequestsException", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "errorCode" },
         },
      }),
      Message = schema.new({
         id = id.from(_N, "TooManyRequestsException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "message" },
         },
      }),
   },
})

M.CreateApplicationVersionInput = schema.new({
   id = id.from(_N, "CreateApplicationVersionRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "CreateApplicationVersionInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SemanticVersion = schema.new({
         id = id.from(_N, "CreateApplicationVersionInput", "SemanticVersion"),
         type = "string",
         name = "SemanticVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SourceCodeArchiveUrl = schema.new({
         id = id.from(_N, "CreateApplicationVersionInput", "SourceCodeArchiveUrl"),
         type = "string",
         name = "SourceCodeArchiveUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "sourceCodeArchiveUrl" },
         },
      }),
      SourceCodeUrl = schema.new({
         id = id.from(_N, "CreateApplicationVersionInput", "SourceCodeUrl"),
         type = "string",
         name = "SourceCodeUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "sourceCodeUrl" },
         },
      }),
      TemplateBody = schema.new({
         id = id.from(_N, "CreateApplicationVersionInput", "TemplateBody"),
         type = "string",
         name = "TemplateBody",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "templateBody" },
         },
      }),
      TemplateUrl = schema.new({
         id = id.from(_N, "CreateApplicationVersionInput", "TemplateUrl"),
         type = "string",
         name = "TemplateUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "templateUrl" },
         },
      }),
   },
})

M.CreateApplicationVersionOutput = schema.new({
   id = id.from(_N, "CreateApplicationVersionResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "CreateApplicationVersionOutput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "applicationId" },
         },
      }),
      CreationTime = schema.new({
         id = id.from(_N, "CreateApplicationVersionOutput", "CreationTime"),
         type = "string",
         name = "CreationTime",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "creationTime" },
         },
      }),
      ParameterDefinitions = schema.new({
         id = id.from(_N, "CreateApplicationVersionOutput", "ParameterDefinitions"),
         type = "list",
         name = "ParameterDefinitions",
         target_id = prelude.Document.id,
         list_member = M.ParameterDefinition,
         traits = {
            [traits.JSON_NAME] = { name = "parameterDefinitions" },
         },
      }),
      RequiredCapabilities = schema.new({
         id = id.from(_N, "CreateApplicationVersionOutput", "RequiredCapabilities"),
         type = "list",
         name = "RequiredCapabilities",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "requiredCapabilities" },
         },
      }),
      ResourcesSupported = schema.new({
         id = id.from(_N, "CreateApplicationVersionOutput", "ResourcesSupported"),
         type = "boolean",
         name = "ResourcesSupported",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.JSON_NAME] = { name = "resourcesSupported" },
         },
      }),
      SemanticVersion = schema.new({
         id = id.from(_N, "CreateApplicationVersionOutput", "SemanticVersion"),
         type = "string",
         name = "SemanticVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "semanticVersion" },
         },
      }),
      SourceCodeArchiveUrl = schema.new({
         id = id.from(_N, "CreateApplicationVersionOutput", "SourceCodeArchiveUrl"),
         type = "string",
         name = "SourceCodeArchiveUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "sourceCodeArchiveUrl" },
         },
      }),
      SourceCodeUrl = schema.new({
         id = id.from(_N, "CreateApplicationVersionOutput", "SourceCodeUrl"),
         type = "string",
         name = "SourceCodeUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "sourceCodeUrl" },
         },
      }),
      TemplateUrl = schema.new({
         id = id.from(_N, "CreateApplicationVersionOutput", "TemplateUrl"),
         type = "string",
         name = "TemplateUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "templateUrl" },
         },
      }),
   },
})

M.RollbackConfiguration = schema.new({
   id = id.from(_N, "RollbackConfiguration"),
   type = "structure",
   members = {
      MonitoringTimeInMinutes = schema.new({
         id = id.from(_N, "RollbackConfiguration", "MonitoringTimeInMinutes"),
         type = "integer",
         name = "MonitoringTimeInMinutes",
         target_id = prelude.Integer.id,
         traits = {
            [traits.JSON_NAME] = { name = "monitoringTimeInMinutes" },
         },
      }),
      RollbackTriggers = schema.new({
         id = id.from(_N, "RollbackConfiguration", "RollbackTriggers"),
         type = "list",
         name = "RollbackTriggers",
         target_id = prelude.Document.id,
         list_member = M.RollbackTrigger,
         traits = {
            [traits.JSON_NAME] = { name = "rollbackTriggers" },
         },
      }),
   },
})

M.CreateCloudFormationChangeSetInput = schema.new({
   id = id.from(_N, "CreateCloudFormationChangeSetRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "CreateCloudFormationChangeSetInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Capabilities = schema.new({
         id = id.from(_N, "CreateCloudFormationChangeSetInput", "Capabilities"),
         type = "list",
         name = "Capabilities",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "capabilities" },
         },
      }),
      ChangeSetName = schema.new({
         id = id.from(_N, "CreateCloudFormationChangeSetInput", "ChangeSetName"),
         type = "string",
         name = "ChangeSetName",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "changeSetName" },
         },
      }),
      ClientToken = schema.new({
         id = id.from(_N, "CreateCloudFormationChangeSetInput", "ClientToken"),
         type = "string",
         name = "ClientToken",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "clientToken" },
         },
      }),
      Description = schema.new({
         id = id.from(_N, "CreateCloudFormationChangeSetInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "description" },
         },
      }),
      NotificationArns = schema.new({
         id = id.from(_N, "CreateCloudFormationChangeSetInput", "NotificationArns"),
         type = "list",
         name = "NotificationArns",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "notificationArns" },
         },
      }),
      ParameterOverrides = schema.new({
         id = id.from(_N, "CreateCloudFormationChangeSetInput", "ParameterOverrides"),
         type = "list",
         name = "ParameterOverrides",
         target_id = prelude.Document.id,
         list_member = M.ParameterValue,
         traits = {
            [traits.JSON_NAME] = { name = "parameterOverrides" },
         },
      }),
      ResourceTypes = schema.new({
         id = id.from(_N, "CreateCloudFormationChangeSetInput", "ResourceTypes"),
         type = "list",
         name = "ResourceTypes",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "resourceTypes" },
         },
      }),
      RollbackConfiguration = schema.new({
         id = id.from(_N, "CreateCloudFormationChangeSetInput", "RollbackConfiguration"),
         type = "structure",
         name = "RollbackConfiguration",
         target_id = id.from(_N, "RollbackConfiguration"),
         target = M.RollbackConfiguration,
         traits = {
            [traits.JSON_NAME] = { name = "rollbackConfiguration" },
         },
      }),
      SemanticVersion = schema.new({
         id = id.from(_N, "CreateCloudFormationChangeSetInput", "SemanticVersion"),
         type = "string",
         name = "SemanticVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "semanticVersion" },
         },
      }),
      StackName = schema.new({
         id = id.from(_N, "CreateCloudFormationChangeSetInput", "StackName"),
         type = "string",
         name = "StackName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "stackName" },
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateCloudFormationChangeSetInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
         traits = {
            [traits.JSON_NAME] = { name = "tags" },
         },
      }),
      TemplateId = schema.new({
         id = id.from(_N, "CreateCloudFormationChangeSetInput", "TemplateId"),
         type = "string",
         name = "TemplateId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "templateId" },
         },
      }),
   },
})

M.CreateCloudFormationChangeSetOutput = schema.new({
   id = id.from(_N, "CreateCloudFormationChangeSetResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "CreateCloudFormationChangeSetOutput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "applicationId" },
         },
      }),
      ChangeSetId = schema.new({
         id = id.from(_N, "CreateCloudFormationChangeSetOutput", "ChangeSetId"),
         type = "string",
         name = "ChangeSetId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "changeSetId" },
         },
      }),
      SemanticVersion = schema.new({
         id = id.from(_N, "CreateCloudFormationChangeSetOutput", "SemanticVersion"),
         type = "string",
         name = "SemanticVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "semanticVersion" },
         },
      }),
      StackId = schema.new({
         id = id.from(_N, "CreateCloudFormationChangeSetOutput", "StackId"),
         type = "string",
         name = "StackId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "stackId" },
         },
      }),
   },
})

M.CreateCloudFormationTemplateInput = schema.new({
   id = id.from(_N, "CreateCloudFormationTemplateRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "CreateCloudFormationTemplateInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SemanticVersion = schema.new({
         id = id.from(_N, "CreateCloudFormationTemplateInput", "SemanticVersion"),
         type = "string",
         name = "SemanticVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "semanticVersion" },
         },
      }),
   },
})

M.CreateCloudFormationTemplateOutput = schema.new({
   id = id.from(_N, "CreateCloudFormationTemplateResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "CreateCloudFormationTemplateOutput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "applicationId" },
         },
      }),
      CreationTime = schema.new({
         id = id.from(_N, "CreateCloudFormationTemplateOutput", "CreationTime"),
         type = "string",
         name = "CreationTime",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "creationTime" },
         },
      }),
      ExpirationTime = schema.new({
         id = id.from(_N, "CreateCloudFormationTemplateOutput", "ExpirationTime"),
         type = "string",
         name = "ExpirationTime",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "expirationTime" },
         },
      }),
      SemanticVersion = schema.new({
         id = id.from(_N, "CreateCloudFormationTemplateOutput", "SemanticVersion"),
         type = "string",
         name = "SemanticVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "semanticVersion" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "CreateCloudFormationTemplateOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
      TemplateId = schema.new({
         id = id.from(_N, "CreateCloudFormationTemplateOutput", "TemplateId"),
         type = "string",
         name = "TemplateId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "templateId" },
         },
      }),
      TemplateUrl = schema.new({
         id = id.from(_N, "CreateCloudFormationTemplateOutput", "TemplateUrl"),
         type = "string",
         name = "TemplateUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "templateUrl" },
         },
      }),
   },
})

M.NotFoundException = schema.new({
   id = id.from(_N, "NotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      ErrorCode = schema.new({
         id = id.from(_N, "NotFoundException", "ErrorCode"),
         type = "string",
         name = "ErrorCode",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "errorCode" },
         },
      }),
      Message = schema.new({
         id = id.from(_N, "NotFoundException", "Message"),
         type = "string",
         name = "Message",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "message" },
         },
      }),
   },
})

M.DeleteApplicationInput = schema.new({
   id = id.from(_N, "DeleteApplicationRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "DeleteApplicationInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.DeleteApplicationOutput = prelude.Unit

M.GetApplicationInput = schema.new({
   id = id.from(_N, "GetApplicationRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetApplicationInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      SemanticVersion = schema.new({
         id = id.from(_N, "GetApplicationInput", "SemanticVersion"),
         type = "string",
         name = "SemanticVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "semanticVersion" },
         },
      }),
   },
})

M.GetApplicationOutput = schema.new({
   id = id.from(_N, "GetApplicationResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetApplicationOutput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "applicationId" },
         },
      }),
      Author = schema.new({
         id = id.from(_N, "GetApplicationOutput", "Author"),
         type = "string",
         name = "Author",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "author" },
         },
      }),
      CreationTime = schema.new({
         id = id.from(_N, "GetApplicationOutput", "CreationTime"),
         type = "string",
         name = "CreationTime",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "creationTime" },
         },
      }),
      Description = schema.new({
         id = id.from(_N, "GetApplicationOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "description" },
         },
      }),
      HomePageUrl = schema.new({
         id = id.from(_N, "GetApplicationOutput", "HomePageUrl"),
         type = "string",
         name = "HomePageUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "homePageUrl" },
         },
      }),
      IsVerifiedAuthor = schema.new({
         id = id.from(_N, "GetApplicationOutput", "IsVerifiedAuthor"),
         type = "boolean",
         name = "IsVerifiedAuthor",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.JSON_NAME] = { name = "isVerifiedAuthor" },
         },
      }),
      Labels = schema.new({
         id = id.from(_N, "GetApplicationOutput", "Labels"),
         type = "list",
         name = "Labels",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "labels" },
         },
      }),
      LicenseUrl = schema.new({
         id = id.from(_N, "GetApplicationOutput", "LicenseUrl"),
         type = "string",
         name = "LicenseUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "licenseUrl" },
         },
      }),
      Name = schema.new({
         id = id.from(_N, "GetApplicationOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "name" },
         },
      }),
      ReadmeUrl = schema.new({
         id = id.from(_N, "GetApplicationOutput", "ReadmeUrl"),
         type = "string",
         name = "ReadmeUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "readmeUrl" },
         },
      }),
      SpdxLicenseId = schema.new({
         id = id.from(_N, "GetApplicationOutput", "SpdxLicenseId"),
         type = "string",
         name = "SpdxLicenseId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "spdxLicenseId" },
         },
      }),
      VerifiedAuthorUrl = schema.new({
         id = id.from(_N, "GetApplicationOutput", "VerifiedAuthorUrl"),
         type = "string",
         name = "VerifiedAuthorUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "verifiedAuthorUrl" },
         },
      }),
      Version = schema.new({
         id = id.from(_N, "GetApplicationOutput", "Version"),
         type = "structure",
         name = "Version",
         target_id = id.from(_N, "Version"),
         target = M.Version,
         traits = {
            [traits.JSON_NAME] = { name = "version" },
         },
      }),
   },
})

M.GetApplicationPolicyInput = schema.new({
   id = id.from(_N, "GetApplicationPolicyRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetApplicationPolicyInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetApplicationPolicyOutput = schema.new({
   id = id.from(_N, "GetApplicationPolicyResponse"),
   type = "structure",
   members = {
      Statements = schema.new({
         id = id.from(_N, "GetApplicationPolicyOutput", "Statements"),
         type = "list",
         name = "Statements",
         target_id = prelude.Document.id,
         list_member = M.ApplicationPolicyStatement,
         traits = {
            [traits.JSON_NAME] = { name = "statements" },
         },
      }),
   },
})

M.GetCloudFormationTemplateInput = schema.new({
   id = id.from(_N, "GetCloudFormationTemplateRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetCloudFormationTemplateInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      TemplateId = schema.new({
         id = id.from(_N, "GetCloudFormationTemplateInput", "TemplateId"),
         type = "string",
         name = "TemplateId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
   },
})

M.GetCloudFormationTemplateOutput = schema.new({
   id = id.from(_N, "GetCloudFormationTemplateResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "GetCloudFormationTemplateOutput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "applicationId" },
         },
      }),
      CreationTime = schema.new({
         id = id.from(_N, "GetCloudFormationTemplateOutput", "CreationTime"),
         type = "string",
         name = "CreationTime",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "creationTime" },
         },
      }),
      ExpirationTime = schema.new({
         id = id.from(_N, "GetCloudFormationTemplateOutput", "ExpirationTime"),
         type = "string",
         name = "ExpirationTime",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "expirationTime" },
         },
      }),
      SemanticVersion = schema.new({
         id = id.from(_N, "GetCloudFormationTemplateOutput", "SemanticVersion"),
         type = "string",
         name = "SemanticVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "semanticVersion" },
         },
      }),
      Status = schema.new({
         id = id.from(_N, "GetCloudFormationTemplateOutput", "Status"),
         type = "string",
         name = "Status",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "status" },
         },
      }),
      TemplateId = schema.new({
         id = id.from(_N, "GetCloudFormationTemplateOutput", "TemplateId"),
         type = "string",
         name = "TemplateId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "templateId" },
         },
      }),
      TemplateUrl = schema.new({
         id = id.from(_N, "GetCloudFormationTemplateOutput", "TemplateUrl"),
         type = "string",
         name = "TemplateUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "templateUrl" },
         },
      }),
   },
})

M.ListApplicationDependenciesInput = schema.new({
   id = id.from(_N, "ListApplicationDependenciesRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "ListApplicationDependenciesInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      MaxItems = schema.new({
         id = id.from(_N, "ListApplicationDependenciesInput", "MaxItems"),
         type = "integer",
         name = "MaxItems",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxItems" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListApplicationDependenciesInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
      SemanticVersion = schema.new({
         id = id.from(_N, "ListApplicationDependenciesInput", "SemanticVersion"),
         type = "string",
         name = "SemanticVersion",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "semanticVersion" },
         },
      }),
   },
})

M.ListApplicationDependenciesOutput = schema.new({
   id = id.from(_N, "ListApplicationDependenciesResponse"),
   type = "structure",
   members = {
      Dependencies = schema.new({
         id = id.from(_N, "ListApplicationDependenciesOutput", "Dependencies"),
         type = "list",
         name = "Dependencies",
         target_id = prelude.Document.id,
         list_member = M.ApplicationDependencySummary,
         traits = {
            [traits.JSON_NAME] = { name = "dependencies" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListApplicationDependenciesOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "nextToken" },
         },
      }),
   },
})

M.ListApplicationsInput = schema.new({
   id = id.from(_N, "ListApplicationsRequest"),
   type = "structure",
   members = {
      MaxItems = schema.new({
         id = id.from(_N, "ListApplicationsInput", "MaxItems"),
         type = "integer",
         name = "MaxItems",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxItems" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListApplicationsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ListApplicationsOutput = schema.new({
   id = id.from(_N, "ListApplicationsResponse"),
   type = "structure",
   members = {
      Applications = schema.new({
         id = id.from(_N, "ListApplicationsOutput", "Applications"),
         type = "list",
         name = "Applications",
         target_id = prelude.Document.id,
         list_member = M.ApplicationSummary,
         traits = {
            [traits.JSON_NAME] = { name = "applications" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListApplicationsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "nextToken" },
         },
      }),
   },
})

M.ListApplicationVersionsInput = schema.new({
   id = id.from(_N, "ListApplicationVersionsRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "ListApplicationVersionsInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      MaxItems = schema.new({
         id = id.from(_N, "ListApplicationVersionsInput", "MaxItems"),
         type = "integer",
         name = "MaxItems",
         target_id = prelude.Integer.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "maxItems" },
         },
      }),
      NextToken = schema.new({
         id = id.from(_N, "ListApplicationVersionsInput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.HTTP_QUERY] = { name = "nextToken" },
         },
      }),
   },
})

M.ListApplicationVersionsOutput = schema.new({
   id = id.from(_N, "ListApplicationVersionsResponse"),
   type = "structure",
   members = {
      NextToken = schema.new({
         id = id.from(_N, "ListApplicationVersionsOutput", "NextToken"),
         type = "string",
         name = "NextToken",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "nextToken" },
         },
      }),
      Versions = schema.new({
         id = id.from(_N, "ListApplicationVersionsOutput", "Versions"),
         type = "list",
         name = "Versions",
         target_id = prelude.Document.id,
         list_member = M.VersionSummary,
         traits = {
            [traits.JSON_NAME] = { name = "versions" },
         },
      }),
   },
})

M.PutApplicationPolicyInput = schema.new({
   id = id.from(_N, "PutApplicationPolicyRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "PutApplicationPolicyInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Statements = schema.new({
         id = id.from(_N, "PutApplicationPolicyInput", "Statements"),
         type = "list",
         name = "Statements",
         target_id = prelude.Document.id,
         list_member = M.ApplicationPolicyStatement,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "statements" },
         },
      }),
   },
})

M.PutApplicationPolicyOutput = schema.new({
   id = id.from(_N, "PutApplicationPolicyResponse"),
   type = "structure",
   members = {
      Statements = schema.new({
         id = id.from(_N, "PutApplicationPolicyOutput", "Statements"),
         type = "list",
         name = "Statements",
         target_id = prelude.Document.id,
         list_member = M.ApplicationPolicyStatement,
         traits = {
            [traits.JSON_NAME] = { name = "statements" },
         },
      }),
   },
})

M.UnshareApplicationInput = schema.new({
   id = id.from(_N, "UnshareApplicationRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "UnshareApplicationInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      OrganizationId = schema.new({
         id = id.from(_N, "UnshareApplicationInput", "OrganizationId"),
         type = "string",
         name = "OrganizationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.JSON_NAME] = { name = "organizationId" },
         },
      }),
   },
})

M.UnshareApplicationOutput = prelude.Unit

M.UpdateApplicationInput = schema.new({
   id = id.from(_N, "UpdateApplicationRequest"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
            [traits.HTTP_LABEL] = {},
         },
      }),
      Author = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "Author"),
         type = "string",
         name = "Author",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "author" },
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "description" },
         },
      }),
      HomePageUrl = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "HomePageUrl"),
         type = "string",
         name = "HomePageUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "homePageUrl" },
         },
      }),
      Labels = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "Labels"),
         type = "list",
         name = "Labels",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "labels" },
         },
      }),
      ReadmeBody = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "ReadmeBody"),
         type = "string",
         name = "ReadmeBody",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "readmeBody" },
         },
      }),
      ReadmeUrl = schema.new({
         id = id.from(_N, "UpdateApplicationInput", "ReadmeUrl"),
         type = "string",
         name = "ReadmeUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "readmeUrl" },
         },
      }),
   },
})

M.UpdateApplicationOutput = schema.new({
   id = id.from(_N, "UpdateApplicationResponse"),
   type = "structure",
   members = {
      ApplicationId = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "ApplicationId"),
         type = "string",
         name = "ApplicationId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "applicationId" },
         },
      }),
      Author = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "Author"),
         type = "string",
         name = "Author",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "author" },
         },
      }),
      CreationTime = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "CreationTime"),
         type = "string",
         name = "CreationTime",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "creationTime" },
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "description" },
         },
      }),
      HomePageUrl = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "HomePageUrl"),
         type = "string",
         name = "HomePageUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "homePageUrl" },
         },
      }),
      IsVerifiedAuthor = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "IsVerifiedAuthor"),
         type = "boolean",
         name = "IsVerifiedAuthor",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.JSON_NAME] = { name = "isVerifiedAuthor" },
         },
      }),
      Labels = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "Labels"),
         type = "list",
         name = "Labels",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.JSON_NAME] = { name = "labels" },
         },
      }),
      LicenseUrl = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "LicenseUrl"),
         type = "string",
         name = "LicenseUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "licenseUrl" },
         },
      }),
      Name = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "name" },
         },
      }),
      ReadmeUrl = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "ReadmeUrl"),
         type = "string",
         name = "ReadmeUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "readmeUrl" },
         },
      }),
      SpdxLicenseId = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "SpdxLicenseId"),
         type = "string",
         name = "SpdxLicenseId",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "spdxLicenseId" },
         },
      }),
      VerifiedAuthorUrl = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "VerifiedAuthorUrl"),
         type = "string",
         name = "VerifiedAuthorUrl",
         target_id = prelude.String.id,
         traits = {
            [traits.JSON_NAME] = { name = "verifiedAuthorUrl" },
         },
      }),
      Version = schema.new({
         id = id.from(_N, "UpdateApplicationOutput", "Version"),
         type = "structure",
         name = "Version",
         target_id = id.from(_N, "Version"),
         target = M.Version,
         traits = {
            [traits.JSON_NAME] = { name = "version" },
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
   id = id.from("com.amazonaws.serverlessapplicationrepository", "ServerlessApplicationRepository"),
   version = "2017-09-08",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateApplication = schema.operation({
   id = id.from("com.amazonaws.serverlessapplicationrepository", "CreateApplication"),
   input = M.CreateApplicationInput,
   output = M.CreateApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateApplicationVersion = schema.operation({
   id = id.from("com.amazonaws.serverlessapplicationrepository", "CreateApplicationVersion"),
   input = M.CreateApplicationVersionInput,
   output = M.CreateApplicationVersionOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/applications/{ApplicationId}/versions/{SemanticVersion}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCloudFormationChangeSet = schema.operation({
   id = id.from("com.amazonaws.serverlessapplicationrepository", "CreateCloudFormationChangeSet"),
   input = M.CreateCloudFormationChangeSetInput,
   output = M.CreateCloudFormationChangeSetOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications/{ApplicationId}/changesets" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCloudFormationTemplate = schema.operation({
   id = id.from("com.amazonaws.serverlessapplicationrepository", "CreateCloudFormationTemplate"),
   input = M.CreateCloudFormationTemplateInput,
   output = M.CreateCloudFormationTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications/{ApplicationId}/templates" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteApplication = schema.operation({
   id = id.from("com.amazonaws.serverlessapplicationrepository", "DeleteApplication"),
   input = M.DeleteApplicationInput,
   output = M.DeleteApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "DELETE", path = "/applications/{ApplicationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetApplication = schema.operation({
   id = id.from("com.amazonaws.serverlessapplicationrepository", "GetApplication"),
   input = M.GetApplicationInput,
   output = M.GetApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{ApplicationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetApplicationPolicy = schema.operation({
   id = id.from("com.amazonaws.serverlessapplicationrepository", "GetApplicationPolicy"),
   input = M.GetApplicationPolicyInput,
   output = M.GetApplicationPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{ApplicationId}/policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetCloudFormationTemplate = schema.operation({
   id = id.from("com.amazonaws.serverlessapplicationrepository", "GetCloudFormationTemplate"),
   input = M.GetCloudFormationTemplateInput,
   output = M.GetCloudFormationTemplateOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{ApplicationId}/templates/{TemplateId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListApplicationDependencies = schema.operation({
   id = id.from("com.amazonaws.serverlessapplicationrepository", "ListApplicationDependencies"),
   input = M.ListApplicationDependenciesInput,
   output = M.ListApplicationDependenciesOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{ApplicationId}/dependencies" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListApplications = schema.operation({
   id = id.from("com.amazonaws.serverlessapplicationrepository", "ListApplications"),
   input = M.ListApplicationsInput,
   output = M.ListApplicationsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListApplicationVersions = schema.operation({
   id = id.from("com.amazonaws.serverlessapplicationrepository", "ListApplicationVersions"),
   input = M.ListApplicationVersionsInput,
   output = M.ListApplicationVersionsOutput,
   traits = {
      [traits.HTTP] = { method = "GET", path = "/applications/{ApplicationId}/versions" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutApplicationPolicy = schema.operation({
   id = id.from("com.amazonaws.serverlessapplicationrepository", "PutApplicationPolicy"),
   input = M.PutApplicationPolicyInput,
   output = M.PutApplicationPolicyOutput,
   traits = {
      [traits.HTTP] = { method = "PUT", path = "/applications/{ApplicationId}/policy" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UnshareApplication = schema.operation({
   id = id.from("com.amazonaws.serverlessapplicationrepository", "UnshareApplication"),
   input = M.UnshareApplicationInput,
   output = M.UnshareApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "POST", path = "/applications/{ApplicationId}/unshare" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateApplication = schema.operation({
   id = id.from("com.amazonaws.serverlessapplicationrepository", "UpdateApplication"),
   input = M.UpdateApplicationInput,
   output = M.UpdateApplicationOutput,
   traits = {
      [traits.HTTP] = { method = "PATCH", path = "/applications/{ApplicationId}" },
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
