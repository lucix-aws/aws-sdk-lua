

local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.kms"

local M = {}

M.GrantOperationList = schema.new({ type = "list", list_member = prelude.String })

M.GrantTokenList = schema.new({ type = "list", list_member = prelude.String })

M.TagList = schema.new({ type = "list", list_member = M.Tag })

M.EncryptionContextType = schema.new({ type = "map", map_key = prelude.String, map_value = prelude.String })

M.DryRunModifierList = schema.new({ type = "list", list_member = prelude.String })

M.CustomKeyStoresList = schema.new({ type = "list", list_member = M.CustomKeyStoresListEntry })

M.EncryptionAlgorithmSpecList = schema.new({ type = "list", list_member = prelude.String })

M.SigningAlgorithmSpecList = schema.new({ type = "list", list_member = prelude.String })

M.KeyAgreementAlgorithmSpecList = schema.new({ type = "list", list_member = prelude.String })

M.AliasList = schema.new({ type = "list", list_member = M.AliasListEntry })

M.GrantList = schema.new({ type = "list", list_member = M.GrantListEntry })

M.PolicyNameList = schema.new({ type = "list", list_member = prelude.String })

M.RotationsList = schema.new({ type = "list", list_member = M.RotationsListEntry })

M.KeyList = schema.new({ type = "list", list_member = M.KeyListEntry })

M.TagKeyList = schema.new({ type = "list", list_member = prelude.String })

M.MacAlgorithmSpecList = schema.new({ type = "list", list_member = prelude.String })

M.MultiRegionKeyList = schema.new({ type = "list", list_member = M.MultiRegionKey })

M.AliasListEntry = schema.new({
   id = id.from(_N, "AliasListEntry"),
   type = "structure",
   members = {
      AliasName = schema.new({
         id = id.from(_N, "AliasListEntry", "AliasName"),
         type = "string",
         name = "AliasName",
         target_id = prelude.String.id,
      }),
      AliasArn = schema.new({
         id = id.from(_N, "AliasListEntry", "AliasArn"),
         type = "string",
         name = "AliasArn",
         target_id = prelude.String.id,
      }),
      TargetKeyId = schema.new({
         id = id.from(_N, "AliasListEntry", "TargetKeyId"),
         type = "string",
         name = "TargetKeyId",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "AliasListEntry", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      LastUpdatedDate = schema.new({
         id = id.from(_N, "AliasListEntry", "LastUpdatedDate"),
         type = "timestamp",
         name = "LastUpdatedDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.AlreadyExistsException = schema.new({
   id = id.from(_N, "AlreadyExistsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "AlreadyExistsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CancelKeyDeletionInput = schema.new({
   id = id.from(_N, "CancelKeyDeletionRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "CancelKeyDeletionInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CancelKeyDeletionOutput = schema.new({
   id = id.from(_N, "CancelKeyDeletionResponse"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "CancelKeyDeletionOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
   },
})

M.DependencyTimeoutException = schema.new({
   id = id.from(_N, "DependencyTimeoutException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "DependencyTimeoutException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidArnException = schema.new({
   id = id.from(_N, "InvalidArnException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidArnException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.KMSInternalException = schema.new({
   id = id.from(_N, "KMSInternalException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "KMSInternalException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.KMSInvalidStateException = schema.new({
   id = id.from(_N, "KMSInvalidStateException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "KMSInvalidStateException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
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
      message = schema.new({
         id = id.from(_N, "NotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CloudHsmClusterInUseException = schema.new({
   id = id.from(_N, "CloudHsmClusterInUseException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "CloudHsmClusterInUseException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CloudHsmClusterInvalidConfigurationException = schema.new({
   id = id.from(_N, "CloudHsmClusterInvalidConfigurationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "CloudHsmClusterInvalidConfigurationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CloudHsmClusterNotActiveException = schema.new({
   id = id.from(_N, "CloudHsmClusterNotActiveException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "CloudHsmClusterNotActiveException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CloudHsmClusterNotFoundException = schema.new({
   id = id.from(_N, "CloudHsmClusterNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "CloudHsmClusterNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CloudHsmClusterNotRelatedException = schema.new({
   id = id.from(_N, "CloudHsmClusterNotRelatedException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "CloudHsmClusterNotRelatedException", "message"),
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
      }),
   },
})

M.ConnectCustomKeyStoreInput = schema.new({
   id = id.from(_N, "ConnectCustomKeyStoreRequest"),
   type = "structure",
   members = {
      CustomKeyStoreId = schema.new({
         id = id.from(_N, "ConnectCustomKeyStoreInput", "CustomKeyStoreId"),
         type = "string",
         name = "CustomKeyStoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ConnectCustomKeyStoreOutput = schema.new({
   id = id.from(_N, "ConnectCustomKeyStoreResponse"),
   type = "structure",
})

M.CustomKeyStoreInvalidStateException = schema.new({
   id = id.from(_N, "CustomKeyStoreInvalidStateException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "CustomKeyStoreInvalidStateException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CustomKeyStoreNotFoundException = schema.new({
   id = id.from(_N, "CustomKeyStoreNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "CustomKeyStoreNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateAliasInput = schema.new({
   id = id.from(_N, "CreateAliasRequest"),
   type = "structure",
   members = {
      AliasName = schema.new({
         id = id.from(_N, "CreateAliasInput", "AliasName"),
         type = "string",
         name = "AliasName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TargetKeyId = schema.new({
         id = id.from(_N, "CreateAliasInput", "TargetKeyId"),
         type = "string",
         name = "TargetKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateAliasOutput = prelude.Unit

M.InvalidAliasNameException = schema.new({
   id = id.from(_N, "InvalidAliasNameException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidAliasNameException", "message"),
         type = "string",
         name = "message",
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
      message = schema.new({
         id = id.from(_N, "LimitExceededException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.XksProxyAuthenticationCredentialType = schema.new({
   id = id.from(_N, "XksProxyAuthenticationCredentialType"),
   type = "structure",
   members = {
      AccessKeyId = schema.new({
         id = id.from(_N, "XksProxyAuthenticationCredentialType", "AccessKeyId"),
         type = "string",
         name = "AccessKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RawSecretAccessKey = schema.new({
         id = id.from(_N, "XksProxyAuthenticationCredentialType", "RawSecretAccessKey"),
         type = "string",
         name = "RawSecretAccessKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateCustomKeyStoreInput = schema.new({
   id = id.from(_N, "CreateCustomKeyStoreRequest"),
   type = "structure",
   members = {
      CustomKeyStoreName = schema.new({
         id = id.from(_N, "CreateCustomKeyStoreInput", "CustomKeyStoreName"),
         type = "string",
         name = "CustomKeyStoreName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      CloudHsmClusterId = schema.new({
         id = id.from(_N, "CreateCustomKeyStoreInput", "CloudHsmClusterId"),
         type = "string",
         name = "CloudHsmClusterId",
         target_id = prelude.String.id,
      }),
      TrustAnchorCertificate = schema.new({
         id = id.from(_N, "CreateCustomKeyStoreInput", "TrustAnchorCertificate"),
         type = "string",
         name = "TrustAnchorCertificate",
         target_id = prelude.String.id,
      }),
      KeyStorePassword = schema.new({
         id = id.from(_N, "CreateCustomKeyStoreInput", "KeyStorePassword"),
         type = "string",
         name = "KeyStorePassword",
         target_id = prelude.String.id,
      }),
      CustomKeyStoreType = schema.new({
         id = id.from(_N, "CreateCustomKeyStoreInput", "CustomKeyStoreType"),
         type = "string",
         name = "CustomKeyStoreType",
         target_id = prelude.String.id,
      }),
      XksProxyUriEndpoint = schema.new({
         id = id.from(_N, "CreateCustomKeyStoreInput", "XksProxyUriEndpoint"),
         type = "string",
         name = "XksProxyUriEndpoint",
         target_id = prelude.String.id,
      }),
      XksProxyUriPath = schema.new({
         id = id.from(_N, "CreateCustomKeyStoreInput", "XksProxyUriPath"),
         type = "string",
         name = "XksProxyUriPath",
         target_id = prelude.String.id,
      }),
      XksProxyVpcEndpointServiceName = schema.new({
         id = id.from(_N, "CreateCustomKeyStoreInput", "XksProxyVpcEndpointServiceName"),
         type = "string",
         name = "XksProxyVpcEndpointServiceName",
         target_id = prelude.String.id,
      }),
      XksProxyVpcEndpointServiceOwner = schema.new({
         id = id.from(_N, "CreateCustomKeyStoreInput", "XksProxyVpcEndpointServiceOwner"),
         type = "string",
         name = "XksProxyVpcEndpointServiceOwner",
         target_id = prelude.String.id,
      }),
      XksProxyAuthenticationCredential = schema.new({
         id = id.from(_N, "CreateCustomKeyStoreInput", "XksProxyAuthenticationCredential"),
         type = "structure",
         name = "XksProxyAuthenticationCredential",
         target_id = id.from(_N, "XksProxyAuthenticationCredentialType"),
         target = M.XksProxyAuthenticationCredentialType,
      }),
      XksProxyConnectivity = schema.new({
         id = id.from(_N, "CreateCustomKeyStoreInput", "XksProxyConnectivity"),
         type = "string",
         name = "XksProxyConnectivity",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateCustomKeyStoreOutput = schema.new({
   id = id.from(_N, "CreateCustomKeyStoreResponse"),
   type = "structure",
   members = {
      CustomKeyStoreId = schema.new({
         id = id.from(_N, "CreateCustomKeyStoreOutput", "CustomKeyStoreId"),
         type = "string",
         name = "CustomKeyStoreId",
         target_id = prelude.String.id,
      }),
   },
})

M.CustomKeyStoreNameInUseException = schema.new({
   id = id.from(_N, "CustomKeyStoreNameInUseException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "CustomKeyStoreNameInUseException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.IncorrectTrustAnchorException = schema.new({
   id = id.from(_N, "IncorrectTrustAnchorException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "IncorrectTrustAnchorException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.XksProxyIncorrectAuthenticationCredentialException = schema.new({
   id = id.from(_N, "XksProxyIncorrectAuthenticationCredentialException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "XksProxyIncorrectAuthenticationCredentialException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.XksProxyInvalidConfigurationException = schema.new({
   id = id.from(_N, "XksProxyInvalidConfigurationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "XksProxyInvalidConfigurationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.XksProxyInvalidResponseException = schema.new({
   id = id.from(_N, "XksProxyInvalidResponseException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "XksProxyInvalidResponseException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.XksProxyUriEndpointInUseException = schema.new({
   id = id.from(_N, "XksProxyUriEndpointInUseException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "XksProxyUriEndpointInUseException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.XksProxyUriInUseException = schema.new({
   id = id.from(_N, "XksProxyUriInUseException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "XksProxyUriInUseException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.XksProxyUriUnreachableException = schema.new({
   id = id.from(_N, "XksProxyUriUnreachableException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "XksProxyUriUnreachableException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.XksProxyVpcEndpointServiceInUseException = schema.new({
   id = id.from(_N, "XksProxyVpcEndpointServiceInUseException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "XksProxyVpcEndpointServiceInUseException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.XksProxyVpcEndpointServiceInvalidConfigurationException = schema.new({
   id = id.from(_N, "XksProxyVpcEndpointServiceInvalidConfigurationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "XksProxyVpcEndpointServiceInvalidConfigurationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.XksProxyVpcEndpointServiceNotFoundException = schema.new({
   id = id.from(_N, "XksProxyVpcEndpointServiceNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "XksProxyVpcEndpointServiceNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.GrantConstraints = schema.new({
   id = id.from(_N, "GrantConstraints"),
   type = "structure",
   members = {
      EncryptionContextSubset = schema.new({
         id = id.from(_N, "GrantConstraints", "EncryptionContextSubset"),
         type = "map",
         name = "EncryptionContextSubset",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      EncryptionContextEquals = schema.new({
         id = id.from(_N, "GrantConstraints", "EncryptionContextEquals"),
         type = "map",
         name = "EncryptionContextEquals",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
   },
})

M.CreateGrantInput = schema.new({
   id = id.from(_N, "CreateGrantRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "CreateGrantInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      GranteePrincipal = schema.new({
         id = id.from(_N, "CreateGrantInput", "GranteePrincipal"),
         type = "string",
         name = "GranteePrincipal",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RetiringPrincipal = schema.new({
         id = id.from(_N, "CreateGrantInput", "RetiringPrincipal"),
         type = "string",
         name = "RetiringPrincipal",
         target_id = prelude.String.id,
      }),
      Operations = schema.new({
         id = id.from(_N, "CreateGrantInput", "Operations"),
         type = "list",
         name = "Operations",
         target_id = prelude.Document.id,
         list_member = prelude.String,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Constraints = schema.new({
         id = id.from(_N, "CreateGrantInput", "Constraints"),
         type = "structure",
         name = "Constraints",
         target_id = id.from(_N, "GrantConstraints"),
         target = M.GrantConstraints,
      }),
      GrantTokens = schema.new({
         id = id.from(_N, "CreateGrantInput", "GrantTokens"),
         type = "list",
         name = "GrantTokens",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Name = schema.new({
         id = id.from(_N, "CreateGrantInput", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      DryRun = schema.new({
         id = id.from(_N, "CreateGrantInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.CreateGrantOutput = schema.new({
   id = id.from(_N, "CreateGrantResponse"),
   type = "structure",
   members = {
      GrantToken = schema.new({
         id = id.from(_N, "CreateGrantOutput", "GrantToken"),
         type = "string",
         name = "GrantToken",
         target_id = prelude.String.id,
      }),
      GrantId = schema.new({
         id = id.from(_N, "CreateGrantOutput", "GrantId"),
         type = "string",
         name = "GrantId",
         target_id = prelude.String.id,
      }),
   },
})

M.DisabledException = schema.new({
   id = id.from(_N, "DisabledException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "DisabledException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
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
      message = schema.new({
         id = id.from(_N, "DryRunOperationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidGrantTokenException = schema.new({
   id = id.from(_N, "InvalidGrantTokenException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidGrantTokenException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.Tag = schema.new({
   id = id.from(_N, "Tag"),
   type = "structure",
   members = {
      TagKey = schema.new({
         id = id.from(_N, "Tag", "TagKey"),
         type = "string",
         name = "TagKey",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TagValue = schema.new({
         id = id.from(_N, "Tag", "TagValue"),
         type = "string",
         name = "TagValue",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.CreateKeyInput = schema.new({
   id = id.from(_N, "CreateKeyRequest"),
   type = "structure",
   members = {
      Policy = schema.new({
         id = id.from(_N, "CreateKeyInput", "Policy"),
         type = "string",
         name = "Policy",
         target_id = prelude.String.id,
      }),
      Description = schema.new({
         id = id.from(_N, "CreateKeyInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      KeyUsage = schema.new({
         id = id.from(_N, "CreateKeyInput", "KeyUsage"),
         type = "string",
         name = "KeyUsage",
         target_id = prelude.String.id,
      }),
      CustomerMasterKeySpec = schema.new({
         id = id.from(_N, "CreateKeyInput", "CustomerMasterKeySpec"),
         type = "string",
         name = "CustomerMasterKeySpec",
         target_id = prelude.String.id,
      }),
      KeySpec = schema.new({
         id = id.from(_N, "CreateKeyInput", "KeySpec"),
         type = "string",
         name = "KeySpec",
         target_id = prelude.String.id,
      }),
      Origin = schema.new({
         id = id.from(_N, "CreateKeyInput", "Origin"),
         type = "string",
         name = "Origin",
         target_id = prelude.String.id,
      }),
      CustomKeyStoreId = schema.new({
         id = id.from(_N, "CreateKeyInput", "CustomKeyStoreId"),
         type = "string",
         name = "CustomKeyStoreId",
         target_id = prelude.String.id,
      }),
      BypassPolicyLockoutSafetyCheck = schema.new({
         id = id.from(_N, "CreateKeyInput", "BypassPolicyLockoutSafetyCheck"),
         type = "boolean",
         name = "BypassPolicyLockoutSafetyCheck",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      Tags = schema.new({
         id = id.from(_N, "CreateKeyInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      MultiRegion = schema.new({
         id = id.from(_N, "CreateKeyInput", "MultiRegion"),
         type = "boolean",
         name = "MultiRegion",
         target_id = prelude.Boolean.id,
      }),
      XksKeyId = schema.new({
         id = id.from(_N, "CreateKeyInput", "XksKeyId"),
         type = "string",
         name = "XksKeyId",
         target_id = prelude.String.id,
      }),
   },
})

M.MultiRegionKey = schema.new({
   id = id.from(_N, "MultiRegionKey"),
   type = "structure",
   members = {
      Arn = schema.new({
         id = id.from(_N, "MultiRegionKey", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      Region = schema.new({
         id = id.from(_N, "MultiRegionKey", "Region"),
         type = "string",
         name = "Region",
         target_id = prelude.String.id,
      }),
   },
})

M.MultiRegionConfiguration = schema.new({
   id = id.from(_N, "MultiRegionConfiguration"),
   type = "structure",
   members = {
      MultiRegionKeyType = schema.new({
         id = id.from(_N, "MultiRegionConfiguration", "MultiRegionKeyType"),
         type = "string",
         name = "MultiRegionKeyType",
         target_id = prelude.String.id,
      }),
      PrimaryKey = schema.new({
         id = id.from(_N, "MultiRegionConfiguration", "PrimaryKey"),
         type = "structure",
         name = "PrimaryKey",
         target_id = id.from(_N, "MultiRegionKey"),
         target = M.MultiRegionKey,
      }),
      ReplicaKeys = schema.new({
         id = id.from(_N, "MultiRegionConfiguration", "ReplicaKeys"),
         type = "list",
         name = "ReplicaKeys",
         target_id = prelude.Document.id,
         list_member = M.MultiRegionKey,
      }),
   },
})

M.XksKeyConfigurationType = schema.new({
   id = id.from(_N, "XksKeyConfigurationType"),
   type = "structure",
   members = {
      Id = schema.new({
         id = id.from(_N, "XksKeyConfigurationType", "Id"),
         type = "string",
         name = "Id",
         target_id = prelude.String.id,
      }),
   },
})

M.KeyMetadata = schema.new({
   id = id.from(_N, "KeyMetadata"),
   type = "structure",
   members = {
      AWSAccountId = schema.new({
         id = id.from(_N, "KeyMetadata", "AWSAccountId"),
         type = "string",
         name = "AWSAccountId",
         target_id = prelude.String.id,
      }),
      KeyId = schema.new({
         id = id.from(_N, "KeyMetadata", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Arn = schema.new({
         id = id.from(_N, "KeyMetadata", "Arn"),
         type = "string",
         name = "Arn",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "KeyMetadata", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      Enabled = schema.new({
         id = id.from(_N, "KeyMetadata", "Enabled"),
         type = "boolean",
         name = "Enabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      Description = schema.new({
         id = id.from(_N, "KeyMetadata", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      KeyUsage = schema.new({
         id = id.from(_N, "KeyMetadata", "KeyUsage"),
         type = "string",
         name = "KeyUsage",
         target_id = prelude.String.id,
      }),
      KeyState = schema.new({
         id = id.from(_N, "KeyMetadata", "KeyState"),
         type = "string",
         name = "KeyState",
         target_id = prelude.String.id,
      }),
      DeletionDate = schema.new({
         id = id.from(_N, "KeyMetadata", "DeletionDate"),
         type = "timestamp",
         name = "DeletionDate",
         target_id = prelude.Timestamp.id,
      }),
      ValidTo = schema.new({
         id = id.from(_N, "KeyMetadata", "ValidTo"),
         type = "timestamp",
         name = "ValidTo",
         target_id = prelude.Timestamp.id,
      }),
      Origin = schema.new({
         id = id.from(_N, "KeyMetadata", "Origin"),
         type = "string",
         name = "Origin",
         target_id = prelude.String.id,
      }),
      CustomKeyStoreId = schema.new({
         id = id.from(_N, "KeyMetadata", "CustomKeyStoreId"),
         type = "string",
         name = "CustomKeyStoreId",
         target_id = prelude.String.id,
      }),
      CloudHsmClusterId = schema.new({
         id = id.from(_N, "KeyMetadata", "CloudHsmClusterId"),
         type = "string",
         name = "CloudHsmClusterId",
         target_id = prelude.String.id,
      }),
      ExpirationModel = schema.new({
         id = id.from(_N, "KeyMetadata", "ExpirationModel"),
         type = "string",
         name = "ExpirationModel",
         target_id = prelude.String.id,
      }),
      KeyManager = schema.new({
         id = id.from(_N, "KeyMetadata", "KeyManager"),
         type = "string",
         name = "KeyManager",
         target_id = prelude.String.id,
      }),
      CustomerMasterKeySpec = schema.new({
         id = id.from(_N, "KeyMetadata", "CustomerMasterKeySpec"),
         type = "string",
         name = "CustomerMasterKeySpec",
         target_id = prelude.String.id,
      }),
      KeySpec = schema.new({
         id = id.from(_N, "KeyMetadata", "KeySpec"),
         type = "string",
         name = "KeySpec",
         target_id = prelude.String.id,
      }),
      EncryptionAlgorithms = schema.new({
         id = id.from(_N, "KeyMetadata", "EncryptionAlgorithms"),
         type = "list",
         name = "EncryptionAlgorithms",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SigningAlgorithms = schema.new({
         id = id.from(_N, "KeyMetadata", "SigningAlgorithms"),
         type = "list",
         name = "SigningAlgorithms",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      KeyAgreementAlgorithms = schema.new({
         id = id.from(_N, "KeyMetadata", "KeyAgreementAlgorithms"),
         type = "list",
         name = "KeyAgreementAlgorithms",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      MultiRegion = schema.new({
         id = id.from(_N, "KeyMetadata", "MultiRegion"),
         type = "boolean",
         name = "MultiRegion",
         target_id = prelude.Boolean.id,
      }),
      MultiRegionConfiguration = schema.new({
         id = id.from(_N, "KeyMetadata", "MultiRegionConfiguration"),
         type = "structure",
         name = "MultiRegionConfiguration",
         target_id = id.from(_N, "MultiRegionConfiguration"),
         target = M.MultiRegionConfiguration,
      }),
      PendingDeletionWindowInDays = schema.new({
         id = id.from(_N, "KeyMetadata", "PendingDeletionWindowInDays"),
         type = "integer",
         name = "PendingDeletionWindowInDays",
         target_id = prelude.Integer.id,
      }),
      MacAlgorithms = schema.new({
         id = id.from(_N, "KeyMetadata", "MacAlgorithms"),
         type = "list",
         name = "MacAlgorithms",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      XksKeyConfiguration = schema.new({
         id = id.from(_N, "KeyMetadata", "XksKeyConfiguration"),
         type = "structure",
         name = "XksKeyConfiguration",
         target_id = id.from(_N, "XksKeyConfigurationType"),
         target = M.XksKeyConfigurationType,
      }),
      CurrentKeyMaterialId = schema.new({
         id = id.from(_N, "KeyMetadata", "CurrentKeyMaterialId"),
         type = "string",
         name = "CurrentKeyMaterialId",
         target_id = prelude.String.id,
      }),
   },
})

M.CreateKeyOutput = schema.new({
   id = id.from(_N, "CreateKeyResponse"),
   type = "structure",
   members = {
      KeyMetadata = schema.new({
         id = id.from(_N, "CreateKeyOutput", "KeyMetadata"),
         type = "structure",
         name = "KeyMetadata",
         target_id = id.from(_N, "KeyMetadata"),
         target = M.KeyMetadata,
      }),
   },
})

M.MalformedPolicyDocumentException = schema.new({
   id = id.from(_N, "MalformedPolicyDocumentException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "MalformedPolicyDocumentException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.TagException = schema.new({
   id = id.from(_N, "TagException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "TagException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.UnsupportedOperationException = schema.new({
   id = id.from(_N, "UnsupportedOperationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "UnsupportedOperationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.XksKeyAlreadyInUseException = schema.new({
   id = id.from(_N, "XksKeyAlreadyInUseException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "XksKeyAlreadyInUseException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.XksKeyInvalidConfigurationException = schema.new({
   id = id.from(_N, "XksKeyInvalidConfigurationException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "XksKeyInvalidConfigurationException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.XksKeyNotFoundException = schema.new({
   id = id.from(_N, "XksKeyNotFoundException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "XksKeyNotFoundException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.CustomKeyStoreHasCMKsException = schema.new({
   id = id.from(_N, "CustomKeyStoreHasCMKsException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "CustomKeyStoreHasCMKsException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.XksProxyConfigurationType = schema.new({
   id = id.from(_N, "XksProxyConfigurationType"),
   type = "structure",
   members = {
      Connectivity = schema.new({
         id = id.from(_N, "XksProxyConfigurationType", "Connectivity"),
         type = "string",
         name = "Connectivity",
         target_id = prelude.String.id,
      }),
      AccessKeyId = schema.new({
         id = id.from(_N, "XksProxyConfigurationType", "AccessKeyId"),
         type = "string",
         name = "AccessKeyId",
         target_id = prelude.String.id,
      }),
      UriEndpoint = schema.new({
         id = id.from(_N, "XksProxyConfigurationType", "UriEndpoint"),
         type = "string",
         name = "UriEndpoint",
         target_id = prelude.String.id,
      }),
      UriPath = schema.new({
         id = id.from(_N, "XksProxyConfigurationType", "UriPath"),
         type = "string",
         name = "UriPath",
         target_id = prelude.String.id,
      }),
      VpcEndpointServiceName = schema.new({
         id = id.from(_N, "XksProxyConfigurationType", "VpcEndpointServiceName"),
         type = "string",
         name = "VpcEndpointServiceName",
         target_id = prelude.String.id,
      }),
      VpcEndpointServiceOwner = schema.new({
         id = id.from(_N, "XksProxyConfigurationType", "VpcEndpointServiceOwner"),
         type = "string",
         name = "VpcEndpointServiceOwner",
         target_id = prelude.String.id,
      }),
   },
})

M.CustomKeyStoresListEntry = schema.new({
   id = id.from(_N, "CustomKeyStoresListEntry"),
   type = "structure",
   members = {
      CustomKeyStoreId = schema.new({
         id = id.from(_N, "CustomKeyStoresListEntry", "CustomKeyStoreId"),
         type = "string",
         name = "CustomKeyStoreId",
         target_id = prelude.String.id,
      }),
      CustomKeyStoreName = schema.new({
         id = id.from(_N, "CustomKeyStoresListEntry", "CustomKeyStoreName"),
         type = "string",
         name = "CustomKeyStoreName",
         target_id = prelude.String.id,
      }),
      CloudHsmClusterId = schema.new({
         id = id.from(_N, "CustomKeyStoresListEntry", "CloudHsmClusterId"),
         type = "string",
         name = "CloudHsmClusterId",
         target_id = prelude.String.id,
      }),
      TrustAnchorCertificate = schema.new({
         id = id.from(_N, "CustomKeyStoresListEntry", "TrustAnchorCertificate"),
         type = "string",
         name = "TrustAnchorCertificate",
         target_id = prelude.String.id,
      }),
      ConnectionState = schema.new({
         id = id.from(_N, "CustomKeyStoresListEntry", "ConnectionState"),
         type = "string",
         name = "ConnectionState",
         target_id = prelude.String.id,
      }),
      ConnectionErrorCode = schema.new({
         id = id.from(_N, "CustomKeyStoresListEntry", "ConnectionErrorCode"),
         type = "string",
         name = "ConnectionErrorCode",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "CustomKeyStoresListEntry", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      CustomKeyStoreType = schema.new({
         id = id.from(_N, "CustomKeyStoresListEntry", "CustomKeyStoreType"),
         type = "string",
         name = "CustomKeyStoreType",
         target_id = prelude.String.id,
      }),
      XksProxyConfiguration = schema.new({
         id = id.from(_N, "CustomKeyStoresListEntry", "XksProxyConfiguration"),
         type = "structure",
         name = "XksProxyConfiguration",
         target_id = id.from(_N, "XksProxyConfigurationType"),
         target = M.XksProxyConfigurationType,
      }),
   },
})

M.RecipientInfo = schema.new({
   id = id.from(_N, "RecipientInfo"),
   type = "structure",
   members = {
      KeyEncryptionAlgorithm = schema.new({
         id = id.from(_N, "RecipientInfo", "KeyEncryptionAlgorithm"),
         type = "string",
         name = "KeyEncryptionAlgorithm",
         target_id = prelude.String.id,
      }),
      AttestationDocument = schema.new({
         id = id.from(_N, "RecipientInfo", "AttestationDocument"),
         type = "blob",
         name = "AttestationDocument",
         target_id = prelude.Blob.id,
      }),
   },
})

M.DecryptInput = schema.new({
   id = id.from(_N, "DecryptRequest"),
   type = "structure",
   members = {
      CiphertextBlob = schema.new({
         id = id.from(_N, "DecryptInput", "CiphertextBlob"),
         type = "blob",
         name = "CiphertextBlob",
         target_id = prelude.Blob.id,
      }),
      EncryptionContext = schema.new({
         id = id.from(_N, "DecryptInput", "EncryptionContext"),
         type = "map",
         name = "EncryptionContext",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      GrantTokens = schema.new({
         id = id.from(_N, "DecryptInput", "GrantTokens"),
         type = "list",
         name = "GrantTokens",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      KeyId = schema.new({
         id = id.from(_N, "DecryptInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      EncryptionAlgorithm = schema.new({
         id = id.from(_N, "DecryptInput", "EncryptionAlgorithm"),
         type = "string",
         name = "EncryptionAlgorithm",
         target_id = prelude.String.id,
      }),
      Recipient = schema.new({
         id = id.from(_N, "DecryptInput", "Recipient"),
         type = "structure",
         name = "Recipient",
         target_id = id.from(_N, "RecipientInfo"),
         target = M.RecipientInfo,
      }),
      DryRun = schema.new({
         id = id.from(_N, "DecryptInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
      DryRunModifiers = schema.new({
         id = id.from(_N, "DecryptInput", "DryRunModifiers"),
         type = "list",
         name = "DryRunModifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.DecryptOutput = schema.new({
   id = id.from(_N, "DecryptResponse"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "DecryptOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      Plaintext = schema.new({
         id = id.from(_N, "DecryptOutput", "Plaintext"),
         type = "blob",
         name = "Plaintext",
         target_id = prelude.Blob.id,
      }),
      EncryptionAlgorithm = schema.new({
         id = id.from(_N, "DecryptOutput", "EncryptionAlgorithm"),
         type = "string",
         name = "EncryptionAlgorithm",
         target_id = prelude.String.id,
      }),
      CiphertextForRecipient = schema.new({
         id = id.from(_N, "DecryptOutput", "CiphertextForRecipient"),
         type = "blob",
         name = "CiphertextForRecipient",
         target_id = prelude.Blob.id,
      }),
      KeyMaterialId = schema.new({
         id = id.from(_N, "DecryptOutput", "KeyMaterialId"),
         type = "string",
         name = "KeyMaterialId",
         target_id = prelude.String.id,
      }),
   },
})

M.IncorrectKeyException = schema.new({
   id = id.from(_N, "IncorrectKeyException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "IncorrectKeyException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidCiphertextException = schema.new({
   id = id.from(_N, "InvalidCiphertextException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidCiphertextException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidKeyUsageException = schema.new({
   id = id.from(_N, "InvalidKeyUsageException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidKeyUsageException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.KeyUnavailableException = schema.new({
   id = id.from(_N, "KeyUnavailableException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "server" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "KeyUnavailableException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteAliasInput = schema.new({
   id = id.from(_N, "DeleteAliasRequest"),
   type = "structure",
   members = {
      AliasName = schema.new({
         id = id.from(_N, "DeleteAliasInput", "AliasName"),
         type = "string",
         name = "AliasName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteAliasOutput = prelude.Unit

M.DeleteCustomKeyStoreInput = schema.new({
   id = id.from(_N, "DeleteCustomKeyStoreRequest"),
   type = "structure",
   members = {
      CustomKeyStoreId = schema.new({
         id = id.from(_N, "DeleteCustomKeyStoreInput", "CustomKeyStoreId"),
         type = "string",
         name = "CustomKeyStoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DeleteCustomKeyStoreOutput = schema.new({
   id = id.from(_N, "DeleteCustomKeyStoreResponse"),
   type = "structure",
})

M.DeleteImportedKeyMaterialInput = schema.new({
   id = id.from(_N, "DeleteImportedKeyMaterialRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "DeleteImportedKeyMaterialInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KeyMaterialId = schema.new({
         id = id.from(_N, "DeleteImportedKeyMaterialInput", "KeyMaterialId"),
         type = "string",
         name = "KeyMaterialId",
         target_id = prelude.String.id,
      }),
   },
})

M.DeleteImportedKeyMaterialOutput = schema.new({
   id = id.from(_N, "DeleteImportedKeyMaterialResponse"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "DeleteImportedKeyMaterialOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      KeyMaterialId = schema.new({
         id = id.from(_N, "DeleteImportedKeyMaterialOutput", "KeyMaterialId"),
         type = "string",
         name = "KeyMaterialId",
         target_id = prelude.String.id,
      }),
   },
})

M.DeriveSharedSecretInput = schema.new({
   id = id.from(_N, "DeriveSharedSecretRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "DeriveSharedSecretInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KeyAgreementAlgorithm = schema.new({
         id = id.from(_N, "DeriveSharedSecretInput", "KeyAgreementAlgorithm"),
         type = "string",
         name = "KeyAgreementAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PublicKey = schema.new({
         id = id.from(_N, "DeriveSharedSecretInput", "PublicKey"),
         type = "blob",
         name = "PublicKey",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      GrantTokens = schema.new({
         id = id.from(_N, "DeriveSharedSecretInput", "GrantTokens"),
         type = "list",
         name = "GrantTokens",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DryRun = schema.new({
         id = id.from(_N, "DeriveSharedSecretInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
      Recipient = schema.new({
         id = id.from(_N, "DeriveSharedSecretInput", "Recipient"),
         type = "structure",
         name = "Recipient",
         target_id = id.from(_N, "RecipientInfo"),
         target = M.RecipientInfo,
      }),
   },
})

M.DeriveSharedSecretOutput = schema.new({
   id = id.from(_N, "DeriveSharedSecretResponse"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "DeriveSharedSecretOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      SharedSecret = schema.new({
         id = id.from(_N, "DeriveSharedSecretOutput", "SharedSecret"),
         type = "blob",
         name = "SharedSecret",
         target_id = prelude.Blob.id,
      }),
      CiphertextForRecipient = schema.new({
         id = id.from(_N, "DeriveSharedSecretOutput", "CiphertextForRecipient"),
         type = "blob",
         name = "CiphertextForRecipient",
         target_id = prelude.Blob.id,
      }),
      KeyAgreementAlgorithm = schema.new({
         id = id.from(_N, "DeriveSharedSecretOutput", "KeyAgreementAlgorithm"),
         type = "string",
         name = "KeyAgreementAlgorithm",
         target_id = prelude.String.id,
      }),
      KeyOrigin = schema.new({
         id = id.from(_N, "DeriveSharedSecretOutput", "KeyOrigin"),
         type = "string",
         name = "KeyOrigin",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeCustomKeyStoresInput = schema.new({
   id = id.from(_N, "DescribeCustomKeyStoresRequest"),
   type = "structure",
   members = {
      CustomKeyStoreId = schema.new({
         id = id.from(_N, "DescribeCustomKeyStoresInput", "CustomKeyStoreId"),
         type = "string",
         name = "CustomKeyStoreId",
         target_id = prelude.String.id,
      }),
      CustomKeyStoreName = schema.new({
         id = id.from(_N, "DescribeCustomKeyStoresInput", "CustomKeyStoreName"),
         type = "string",
         name = "CustomKeyStoreName",
         target_id = prelude.String.id,
      }),
      Limit = schema.new({
         id = id.from(_N, "DescribeCustomKeyStoresInput", "Limit"),
         type = "integer",
         name = "Limit",
         target_id = prelude.Integer.id,
      }),
      Marker = schema.new({
         id = id.from(_N, "DescribeCustomKeyStoresInput", "Marker"),
         type = "string",
         name = "Marker",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeCustomKeyStoresOutput = schema.new({
   id = id.from(_N, "DescribeCustomKeyStoresResponse"),
   type = "structure",
   members = {
      CustomKeyStores = schema.new({
         id = id.from(_N, "DescribeCustomKeyStoresOutput", "CustomKeyStores"),
         type = "list",
         name = "CustomKeyStores",
         target_id = prelude.Document.id,
         list_member = M.CustomKeyStoresListEntry,
      }),
      NextMarker = schema.new({
         id = id.from(_N, "DescribeCustomKeyStoresOutput", "NextMarker"),
         type = "string",
         name = "NextMarker",
         target_id = prelude.String.id,
      }),
      Truncated = schema.new({
         id = id.from(_N, "DescribeCustomKeyStoresOutput", "Truncated"),
         type = "boolean",
         name = "Truncated",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.InvalidMarkerException = schema.new({
   id = id.from(_N, "InvalidMarkerException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidMarkerException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.DescribeKeyInput = schema.new({
   id = id.from(_N, "DescribeKeyRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "DescribeKeyInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      GrantTokens = schema.new({
         id = id.from(_N, "DescribeKeyInput", "GrantTokens"),
         type = "list",
         name = "GrantTokens",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.DescribeKeyOutput = schema.new({
   id = id.from(_N, "DescribeKeyResponse"),
   type = "structure",
   members = {
      KeyMetadata = schema.new({
         id = id.from(_N, "DescribeKeyOutput", "KeyMetadata"),
         type = "structure",
         name = "KeyMetadata",
         target_id = id.from(_N, "KeyMetadata"),
         target = M.KeyMetadata,
      }),
   },
})

M.DisableKeyInput = schema.new({
   id = id.from(_N, "DisableKeyRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "DisableKeyInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisableKeyOutput = prelude.Unit

M.DisableKeyRotationInput = schema.new({
   id = id.from(_N, "DisableKeyRotationRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "DisableKeyRotationInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisableKeyRotationOutput = prelude.Unit

M.DisconnectCustomKeyStoreInput = schema.new({
   id = id.from(_N, "DisconnectCustomKeyStoreRequest"),
   type = "structure",
   members = {
      CustomKeyStoreId = schema.new({
         id = id.from(_N, "DisconnectCustomKeyStoreInput", "CustomKeyStoreId"),
         type = "string",
         name = "CustomKeyStoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.DisconnectCustomKeyStoreOutput = schema.new({
   id = id.from(_N, "DisconnectCustomKeyStoreResponse"),
   type = "structure",
})

M.EnableKeyInput = schema.new({
   id = id.from(_N, "EnableKeyRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "EnableKeyInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.EnableKeyOutput = prelude.Unit

M.EnableKeyRotationInput = schema.new({
   id = id.from(_N, "EnableKeyRotationRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "EnableKeyRotationInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      RotationPeriodInDays = schema.new({
         id = id.from(_N, "EnableKeyRotationInput", "RotationPeriodInDays"),
         type = "integer",
         name = "RotationPeriodInDays",
         target_id = prelude.Integer.id,
      }),
   },
})

M.EnableKeyRotationOutput = prelude.Unit

M.EncryptInput = schema.new({
   id = id.from(_N, "EncryptRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "EncryptInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Plaintext = schema.new({
         id = id.from(_N, "EncryptInput", "Plaintext"),
         type = "blob",
         name = "Plaintext",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EncryptionContext = schema.new({
         id = id.from(_N, "EncryptInput", "EncryptionContext"),
         type = "map",
         name = "EncryptionContext",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      GrantTokens = schema.new({
         id = id.from(_N, "EncryptInput", "GrantTokens"),
         type = "list",
         name = "GrantTokens",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      EncryptionAlgorithm = schema.new({
         id = id.from(_N, "EncryptInput", "EncryptionAlgorithm"),
         type = "string",
         name = "EncryptionAlgorithm",
         target_id = prelude.String.id,
      }),
      DryRun = schema.new({
         id = id.from(_N, "EncryptInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.EncryptOutput = schema.new({
   id = id.from(_N, "EncryptResponse"),
   type = "structure",
   members = {
      CiphertextBlob = schema.new({
         id = id.from(_N, "EncryptOutput", "CiphertextBlob"),
         type = "blob",
         name = "CiphertextBlob",
         target_id = prelude.Blob.id,
      }),
      KeyId = schema.new({
         id = id.from(_N, "EncryptOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      EncryptionAlgorithm = schema.new({
         id = id.from(_N, "EncryptOutput", "EncryptionAlgorithm"),
         type = "string",
         name = "EncryptionAlgorithm",
         target_id = prelude.String.id,
      }),
   },
})

M.ExpiredImportTokenException = schema.new({
   id = id.from(_N, "ExpiredImportTokenException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "ExpiredImportTokenException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.GenerateDataKeyInput = schema.new({
   id = id.from(_N, "GenerateDataKeyRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "GenerateDataKeyInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EncryptionContext = schema.new({
         id = id.from(_N, "GenerateDataKeyInput", "EncryptionContext"),
         type = "map",
         name = "EncryptionContext",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      NumberOfBytes = schema.new({
         id = id.from(_N, "GenerateDataKeyInput", "NumberOfBytes"),
         type = "integer",
         name = "NumberOfBytes",
         target_id = prelude.Integer.id,
      }),
      KeySpec = schema.new({
         id = id.from(_N, "GenerateDataKeyInput", "KeySpec"),
         type = "string",
         name = "KeySpec",
         target_id = prelude.String.id,
      }),
      GrantTokens = schema.new({
         id = id.from(_N, "GenerateDataKeyInput", "GrantTokens"),
         type = "list",
         name = "GrantTokens",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Recipient = schema.new({
         id = id.from(_N, "GenerateDataKeyInput", "Recipient"),
         type = "structure",
         name = "Recipient",
         target_id = id.from(_N, "RecipientInfo"),
         target = M.RecipientInfo,
      }),
      DryRun = schema.new({
         id = id.from(_N, "GenerateDataKeyInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.GenerateDataKeyOutput = schema.new({
   id = id.from(_N, "GenerateDataKeyResponse"),
   type = "structure",
   members = {
      CiphertextBlob = schema.new({
         id = id.from(_N, "GenerateDataKeyOutput", "CiphertextBlob"),
         type = "blob",
         name = "CiphertextBlob",
         target_id = prelude.Blob.id,
      }),
      Plaintext = schema.new({
         id = id.from(_N, "GenerateDataKeyOutput", "Plaintext"),
         type = "blob",
         name = "Plaintext",
         target_id = prelude.Blob.id,
      }),
      KeyId = schema.new({
         id = id.from(_N, "GenerateDataKeyOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      CiphertextForRecipient = schema.new({
         id = id.from(_N, "GenerateDataKeyOutput", "CiphertextForRecipient"),
         type = "blob",
         name = "CiphertextForRecipient",
         target_id = prelude.Blob.id,
      }),
      KeyMaterialId = schema.new({
         id = id.from(_N, "GenerateDataKeyOutput", "KeyMaterialId"),
         type = "string",
         name = "KeyMaterialId",
         target_id = prelude.String.id,
      }),
   },
})

M.GenerateDataKeyPairInput = schema.new({
   id = id.from(_N, "GenerateDataKeyPairRequest"),
   type = "structure",
   members = {
      EncryptionContext = schema.new({
         id = id.from(_N, "GenerateDataKeyPairInput", "EncryptionContext"),
         type = "map",
         name = "EncryptionContext",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      KeyId = schema.new({
         id = id.from(_N, "GenerateDataKeyPairInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KeyPairSpec = schema.new({
         id = id.from(_N, "GenerateDataKeyPairInput", "KeyPairSpec"),
         type = "string",
         name = "KeyPairSpec",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      GrantTokens = schema.new({
         id = id.from(_N, "GenerateDataKeyPairInput", "GrantTokens"),
         type = "list",
         name = "GrantTokens",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Recipient = schema.new({
         id = id.from(_N, "GenerateDataKeyPairInput", "Recipient"),
         type = "structure",
         name = "Recipient",
         target_id = id.from(_N, "RecipientInfo"),
         target = M.RecipientInfo,
      }),
      DryRun = schema.new({
         id = id.from(_N, "GenerateDataKeyPairInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.GenerateDataKeyPairOutput = schema.new({
   id = id.from(_N, "GenerateDataKeyPairResponse"),
   type = "structure",
   members = {
      PrivateKeyCiphertextBlob = schema.new({
         id = id.from(_N, "GenerateDataKeyPairOutput", "PrivateKeyCiphertextBlob"),
         type = "blob",
         name = "PrivateKeyCiphertextBlob",
         target_id = prelude.Blob.id,
      }),
      PrivateKeyPlaintext = schema.new({
         id = id.from(_N, "GenerateDataKeyPairOutput", "PrivateKeyPlaintext"),
         type = "blob",
         name = "PrivateKeyPlaintext",
         target_id = prelude.Blob.id,
      }),
      PublicKey = schema.new({
         id = id.from(_N, "GenerateDataKeyPairOutput", "PublicKey"),
         type = "blob",
         name = "PublicKey",
         target_id = prelude.Blob.id,
      }),
      KeyId = schema.new({
         id = id.from(_N, "GenerateDataKeyPairOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      KeyPairSpec = schema.new({
         id = id.from(_N, "GenerateDataKeyPairOutput", "KeyPairSpec"),
         type = "string",
         name = "KeyPairSpec",
         target_id = prelude.String.id,
      }),
      CiphertextForRecipient = schema.new({
         id = id.from(_N, "GenerateDataKeyPairOutput", "CiphertextForRecipient"),
         type = "blob",
         name = "CiphertextForRecipient",
         target_id = prelude.Blob.id,
      }),
      KeyMaterialId = schema.new({
         id = id.from(_N, "GenerateDataKeyPairOutput", "KeyMaterialId"),
         type = "string",
         name = "KeyMaterialId",
         target_id = prelude.String.id,
      }),
   },
})

M.GenerateDataKeyPairWithoutPlaintextInput = schema.new({
   id = id.from(_N, "GenerateDataKeyPairWithoutPlaintextRequest"),
   type = "structure",
   members = {
      EncryptionContext = schema.new({
         id = id.from(_N, "GenerateDataKeyPairWithoutPlaintextInput", "EncryptionContext"),
         type = "map",
         name = "EncryptionContext",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      KeyId = schema.new({
         id = id.from(_N, "GenerateDataKeyPairWithoutPlaintextInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KeyPairSpec = schema.new({
         id = id.from(_N, "GenerateDataKeyPairWithoutPlaintextInput", "KeyPairSpec"),
         type = "string",
         name = "KeyPairSpec",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      GrantTokens = schema.new({
         id = id.from(_N, "GenerateDataKeyPairWithoutPlaintextInput", "GrantTokens"),
         type = "list",
         name = "GrantTokens",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DryRun = schema.new({
         id = id.from(_N, "GenerateDataKeyPairWithoutPlaintextInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.GenerateDataKeyPairWithoutPlaintextOutput = schema.new({
   id = id.from(_N, "GenerateDataKeyPairWithoutPlaintextResponse"),
   type = "structure",
   members = {
      PrivateKeyCiphertextBlob = schema.new({
         id = id.from(_N, "GenerateDataKeyPairWithoutPlaintextOutput", "PrivateKeyCiphertextBlob"),
         type = "blob",
         name = "PrivateKeyCiphertextBlob",
         target_id = prelude.Blob.id,
      }),
      PublicKey = schema.new({
         id = id.from(_N, "GenerateDataKeyPairWithoutPlaintextOutput", "PublicKey"),
         type = "blob",
         name = "PublicKey",
         target_id = prelude.Blob.id,
      }),
      KeyId = schema.new({
         id = id.from(_N, "GenerateDataKeyPairWithoutPlaintextOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      KeyPairSpec = schema.new({
         id = id.from(_N, "GenerateDataKeyPairWithoutPlaintextOutput", "KeyPairSpec"),
         type = "string",
         name = "KeyPairSpec",
         target_id = prelude.String.id,
      }),
      KeyMaterialId = schema.new({
         id = id.from(_N, "GenerateDataKeyPairWithoutPlaintextOutput", "KeyMaterialId"),
         type = "string",
         name = "KeyMaterialId",
         target_id = prelude.String.id,
      }),
   },
})

M.GenerateDataKeyWithoutPlaintextInput = schema.new({
   id = id.from(_N, "GenerateDataKeyWithoutPlaintextRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "GenerateDataKeyWithoutPlaintextInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EncryptionContext = schema.new({
         id = id.from(_N, "GenerateDataKeyWithoutPlaintextInput", "EncryptionContext"),
         type = "map",
         name = "EncryptionContext",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      KeySpec = schema.new({
         id = id.from(_N, "GenerateDataKeyWithoutPlaintextInput", "KeySpec"),
         type = "string",
         name = "KeySpec",
         target_id = prelude.String.id,
      }),
      NumberOfBytes = schema.new({
         id = id.from(_N, "GenerateDataKeyWithoutPlaintextInput", "NumberOfBytes"),
         type = "integer",
         name = "NumberOfBytes",
         target_id = prelude.Integer.id,
      }),
      GrantTokens = schema.new({
         id = id.from(_N, "GenerateDataKeyWithoutPlaintextInput", "GrantTokens"),
         type = "list",
         name = "GrantTokens",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DryRun = schema.new({
         id = id.from(_N, "GenerateDataKeyWithoutPlaintextInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.GenerateDataKeyWithoutPlaintextOutput = schema.new({
   id = id.from(_N, "GenerateDataKeyWithoutPlaintextResponse"),
   type = "structure",
   members = {
      CiphertextBlob = schema.new({
         id = id.from(_N, "GenerateDataKeyWithoutPlaintextOutput", "CiphertextBlob"),
         type = "blob",
         name = "CiphertextBlob",
         target_id = prelude.Blob.id,
      }),
      KeyId = schema.new({
         id = id.from(_N, "GenerateDataKeyWithoutPlaintextOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      KeyMaterialId = schema.new({
         id = id.from(_N, "GenerateDataKeyWithoutPlaintextOutput", "KeyMaterialId"),
         type = "string",
         name = "KeyMaterialId",
         target_id = prelude.String.id,
      }),
   },
})

M.GenerateMacInput = schema.new({
   id = id.from(_N, "GenerateMacRequest"),
   type = "structure",
   members = {
      Message = schema.new({
         id = id.from(_N, "GenerateMacInput", "Message"),
         type = "blob",
         name = "Message",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KeyId = schema.new({
         id = id.from(_N, "GenerateMacInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MacAlgorithm = schema.new({
         id = id.from(_N, "GenerateMacInput", "MacAlgorithm"),
         type = "string",
         name = "MacAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      GrantTokens = schema.new({
         id = id.from(_N, "GenerateMacInput", "GrantTokens"),
         type = "list",
         name = "GrantTokens",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DryRun = schema.new({
         id = id.from(_N, "GenerateMacInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.GenerateMacOutput = schema.new({
   id = id.from(_N, "GenerateMacResponse"),
   type = "structure",
   members = {
      Mac = schema.new({
         id = id.from(_N, "GenerateMacOutput", "Mac"),
         type = "blob",
         name = "Mac",
         target_id = prelude.Blob.id,
      }),
      MacAlgorithm = schema.new({
         id = id.from(_N, "GenerateMacOutput", "MacAlgorithm"),
         type = "string",
         name = "MacAlgorithm",
         target_id = prelude.String.id,
      }),
      KeyId = schema.new({
         id = id.from(_N, "GenerateMacOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
   },
})

M.GenerateRandomInput = schema.new({
   id = id.from(_N, "GenerateRandomRequest"),
   type = "structure",
   members = {
      NumberOfBytes = schema.new({
         id = id.from(_N, "GenerateRandomInput", "NumberOfBytes"),
         type = "integer",
         name = "NumberOfBytes",
         target_id = prelude.Integer.id,
      }),
      CustomKeyStoreId = schema.new({
         id = id.from(_N, "GenerateRandomInput", "CustomKeyStoreId"),
         type = "string",
         name = "CustomKeyStoreId",
         target_id = prelude.String.id,
      }),
      Recipient = schema.new({
         id = id.from(_N, "GenerateRandomInput", "Recipient"),
         type = "structure",
         name = "Recipient",
         target_id = id.from(_N, "RecipientInfo"),
         target = M.RecipientInfo,
      }),
   },
})

M.GenerateRandomOutput = schema.new({
   id = id.from(_N, "GenerateRandomResponse"),
   type = "structure",
   members = {
      Plaintext = schema.new({
         id = id.from(_N, "GenerateRandomOutput", "Plaintext"),
         type = "blob",
         name = "Plaintext",
         target_id = prelude.Blob.id,
      }),
      CiphertextForRecipient = schema.new({
         id = id.from(_N, "GenerateRandomOutput", "CiphertextForRecipient"),
         type = "blob",
         name = "CiphertextForRecipient",
         target_id = prelude.Blob.id,
      }),
   },
})

M.GetKeyLastUsageInput = schema.new({
   id = id.from(_N, "GetKeyLastUsageRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "GetKeyLastUsageInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.KeyLastUsageData = schema.new({
   id = id.from(_N, "KeyLastUsageData"),
   type = "structure",
   members = {
      Operation = schema.new({
         id = id.from(_N, "KeyLastUsageData", "Operation"),
         type = "string",
         name = "Operation",
         target_id = prelude.String.id,
      }),
      Timestamp = schema.new({
         id = id.from(_N, "KeyLastUsageData", "Timestamp"),
         type = "timestamp",
         name = "Timestamp",
         target_id = prelude.Timestamp.id,
      }),
      CloudTrailEventId = schema.new({
         id = id.from(_N, "KeyLastUsageData", "CloudTrailEventId"),
         type = "string",
         name = "CloudTrailEventId",
         target_id = prelude.String.id,
      }),
      KmsRequestId = schema.new({
         id = id.from(_N, "KeyLastUsageData", "KmsRequestId"),
         type = "string",
         name = "KmsRequestId",
         target_id = prelude.String.id,
      }),
   },
})

M.GetKeyLastUsageOutput = schema.new({
   id = id.from(_N, "GetKeyLastUsageResponse"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "GetKeyLastUsageOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      KeyLastUsage = schema.new({
         id = id.from(_N, "GetKeyLastUsageOutput", "KeyLastUsage"),
         type = "structure",
         name = "KeyLastUsage",
         target_id = id.from(_N, "KeyLastUsageData"),
         target = M.KeyLastUsageData,
      }),
      TrackingStartDate = schema.new({
         id = id.from(_N, "GetKeyLastUsageOutput", "TrackingStartDate"),
         type = "timestamp",
         name = "TrackingStartDate",
         target_id = prelude.Timestamp.id,
      }),
      KeyCreationDate = schema.new({
         id = id.from(_N, "GetKeyLastUsageOutput", "KeyCreationDate"),
         type = "timestamp",
         name = "KeyCreationDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetKeyPolicyInput = schema.new({
   id = id.from(_N, "GetKeyPolicyRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "GetKeyPolicyInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PolicyName = schema.new({
         id = id.from(_N, "GetKeyPolicyInput", "PolicyName"),
         type = "string",
         name = "PolicyName",
         target_id = prelude.String.id,
      }),
   },
})

M.GetKeyPolicyOutput = schema.new({
   id = id.from(_N, "GetKeyPolicyResponse"),
   type = "structure",
   members = {
      Policy = schema.new({
         id = id.from(_N, "GetKeyPolicyOutput", "Policy"),
         type = "string",
         name = "Policy",
         target_id = prelude.String.id,
      }),
      PolicyName = schema.new({
         id = id.from(_N, "GetKeyPolicyOutput", "PolicyName"),
         type = "string",
         name = "PolicyName",
         target_id = prelude.String.id,
      }),
   },
})

M.GetKeyRotationStatusInput = schema.new({
   id = id.from(_N, "GetKeyRotationStatusRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "GetKeyRotationStatusInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetKeyRotationStatusOutput = schema.new({
   id = id.from(_N, "GetKeyRotationStatusResponse"),
   type = "structure",
   members = {
      KeyRotationEnabled = schema.new({
         id = id.from(_N, "GetKeyRotationStatusOutput", "KeyRotationEnabled"),
         type = "boolean",
         name = "KeyRotationEnabled",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      KeyId = schema.new({
         id = id.from(_N, "GetKeyRotationStatusOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      RotationPeriodInDays = schema.new({
         id = id.from(_N, "GetKeyRotationStatusOutput", "RotationPeriodInDays"),
         type = "integer",
         name = "RotationPeriodInDays",
         target_id = prelude.Integer.id,
      }),
      NextRotationDate = schema.new({
         id = id.from(_N, "GetKeyRotationStatusOutput", "NextRotationDate"),
         type = "timestamp",
         name = "NextRotationDate",
         target_id = prelude.Timestamp.id,
      }),
      OnDemandRotationStartDate = schema.new({
         id = id.from(_N, "GetKeyRotationStatusOutput", "OnDemandRotationStartDate"),
         type = "timestamp",
         name = "OnDemandRotationStartDate",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetParametersForImportInput = schema.new({
   id = id.from(_N, "GetParametersForImportRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "GetParametersForImportInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      WrappingAlgorithm = schema.new({
         id = id.from(_N, "GetParametersForImportInput", "WrappingAlgorithm"),
         type = "string",
         name = "WrappingAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      WrappingKeySpec = schema.new({
         id = id.from(_N, "GetParametersForImportInput", "WrappingKeySpec"),
         type = "string",
         name = "WrappingKeySpec",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.GetParametersForImportOutput = schema.new({
   id = id.from(_N, "GetParametersForImportResponse"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "GetParametersForImportOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      ImportToken = schema.new({
         id = id.from(_N, "GetParametersForImportOutput", "ImportToken"),
         type = "blob",
         name = "ImportToken",
         target_id = prelude.Blob.id,
      }),
      PublicKey = schema.new({
         id = id.from(_N, "GetParametersForImportOutput", "PublicKey"),
         type = "blob",
         name = "PublicKey",
         target_id = prelude.Blob.id,
      }),
      ParametersValidTo = schema.new({
         id = id.from(_N, "GetParametersForImportOutput", "ParametersValidTo"),
         type = "timestamp",
         name = "ParametersValidTo",
         target_id = prelude.Timestamp.id,
      }),
   },
})

M.GetPublicKeyInput = schema.new({
   id = id.from(_N, "GetPublicKeyRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "GetPublicKeyInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      GrantTokens = schema.new({
         id = id.from(_N, "GetPublicKeyInput", "GrantTokens"),
         type = "list",
         name = "GrantTokens",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.GetPublicKeyOutput = schema.new({
   id = id.from(_N, "GetPublicKeyResponse"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "GetPublicKeyOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      PublicKey = schema.new({
         id = id.from(_N, "GetPublicKeyOutput", "PublicKey"),
         type = "blob",
         name = "PublicKey",
         target_id = prelude.Blob.id,
      }),
      CustomerMasterKeySpec = schema.new({
         id = id.from(_N, "GetPublicKeyOutput", "CustomerMasterKeySpec"),
         type = "string",
         name = "CustomerMasterKeySpec",
         target_id = prelude.String.id,
      }),
      KeySpec = schema.new({
         id = id.from(_N, "GetPublicKeyOutput", "KeySpec"),
         type = "string",
         name = "KeySpec",
         target_id = prelude.String.id,
      }),
      KeyUsage = schema.new({
         id = id.from(_N, "GetPublicKeyOutput", "KeyUsage"),
         type = "string",
         name = "KeyUsage",
         target_id = prelude.String.id,
      }),
      EncryptionAlgorithms = schema.new({
         id = id.from(_N, "GetPublicKeyOutput", "EncryptionAlgorithms"),
         type = "list",
         name = "EncryptionAlgorithms",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SigningAlgorithms = schema.new({
         id = id.from(_N, "GetPublicKeyOutput", "SigningAlgorithms"),
         type = "list",
         name = "SigningAlgorithms",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      KeyAgreementAlgorithms = schema.new({
         id = id.from(_N, "GetPublicKeyOutput", "KeyAgreementAlgorithms"),
         type = "list",
         name = "KeyAgreementAlgorithms",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.GrantListEntry = schema.new({
   id = id.from(_N, "GrantListEntry"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "GrantListEntry", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      GrantId = schema.new({
         id = id.from(_N, "GrantListEntry", "GrantId"),
         type = "string",
         name = "GrantId",
         target_id = prelude.String.id,
      }),
      Name = schema.new({
         id = id.from(_N, "GrantListEntry", "Name"),
         type = "string",
         name = "Name",
         target_id = prelude.String.id,
      }),
      CreationDate = schema.new({
         id = id.from(_N, "GrantListEntry", "CreationDate"),
         type = "timestamp",
         name = "CreationDate",
         target_id = prelude.Timestamp.id,
      }),
      GranteePrincipal = schema.new({
         id = id.from(_N, "GrantListEntry", "GranteePrincipal"),
         type = "string",
         name = "GranteePrincipal",
         target_id = prelude.String.id,
      }),
      RetiringPrincipal = schema.new({
         id = id.from(_N, "GrantListEntry", "RetiringPrincipal"),
         type = "string",
         name = "RetiringPrincipal",
         target_id = prelude.String.id,
      }),
      IssuingAccount = schema.new({
         id = id.from(_N, "GrantListEntry", "IssuingAccount"),
         type = "string",
         name = "IssuingAccount",
         target_id = prelude.String.id,
      }),
      Operations = schema.new({
         id = id.from(_N, "GrantListEntry", "Operations"),
         type = "list",
         name = "Operations",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      Constraints = schema.new({
         id = id.from(_N, "GrantListEntry", "Constraints"),
         type = "structure",
         name = "Constraints",
         target_id = id.from(_N, "GrantConstraints"),
         target = M.GrantConstraints,
      }),
   },
})

M.ImportKeyMaterialInput = schema.new({
   id = id.from(_N, "ImportKeyMaterialRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "ImportKeyMaterialInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ImportToken = schema.new({
         id = id.from(_N, "ImportKeyMaterialInput", "ImportToken"),
         type = "blob",
         name = "ImportToken",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      EncryptedKeyMaterial = schema.new({
         id = id.from(_N, "ImportKeyMaterialInput", "EncryptedKeyMaterial"),
         type = "blob",
         name = "EncryptedKeyMaterial",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ValidTo = schema.new({
         id = id.from(_N, "ImportKeyMaterialInput", "ValidTo"),
         type = "timestamp",
         name = "ValidTo",
         target_id = prelude.Timestamp.id,
      }),
      ExpirationModel = schema.new({
         id = id.from(_N, "ImportKeyMaterialInput", "ExpirationModel"),
         type = "string",
         name = "ExpirationModel",
         target_id = prelude.String.id,
      }),
      ImportType = schema.new({
         id = id.from(_N, "ImportKeyMaterialInput", "ImportType"),
         type = "string",
         name = "ImportType",
         target_id = prelude.String.id,
      }),
      KeyMaterialDescription = schema.new({
         id = id.from(_N, "ImportKeyMaterialInput", "KeyMaterialDescription"),
         type = "string",
         name = "KeyMaterialDescription",
         target_id = prelude.String.id,
      }),
      KeyMaterialId = schema.new({
         id = id.from(_N, "ImportKeyMaterialInput", "KeyMaterialId"),
         type = "string",
         name = "KeyMaterialId",
         target_id = prelude.String.id,
      }),
   },
})

M.ImportKeyMaterialOutput = schema.new({
   id = id.from(_N, "ImportKeyMaterialResponse"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "ImportKeyMaterialOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      KeyMaterialId = schema.new({
         id = id.from(_N, "ImportKeyMaterialOutput", "KeyMaterialId"),
         type = "string",
         name = "KeyMaterialId",
         target_id = prelude.String.id,
      }),
   },
})

M.IncorrectKeyMaterialException = schema.new({
   id = id.from(_N, "IncorrectKeyMaterialException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "IncorrectKeyMaterialException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidImportTokenException = schema.new({
   id = id.from(_N, "InvalidImportTokenException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidImportTokenException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.InvalidGrantIdException = schema.new({
   id = id.from(_N, "InvalidGrantIdException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "InvalidGrantIdException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.KeyListEntry = schema.new({
   id = id.from(_N, "KeyListEntry"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "KeyListEntry", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      KeyArn = schema.new({
         id = id.from(_N, "KeyListEntry", "KeyArn"),
         type = "string",
         name = "KeyArn",
         target_id = prelude.String.id,
      }),
   },
})

M.KMSInvalidMacException = schema.new({
   id = id.from(_N, "KMSInvalidMacException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "KMSInvalidMacException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.KMSInvalidSignatureException = schema.new({
   id = id.from(_N, "KMSInvalidSignatureException"),
   type = "structure",
   traits = {
      [traits.ERROR] = { value = "client" },
   },
   members = {
      message = schema.new({
         id = id.from(_N, "KMSInvalidSignatureException", "message"),
         type = "string",
         name = "message",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAliasesInput = schema.new({
   id = id.from(_N, "ListAliasesRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "ListAliasesInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      Limit = schema.new({
         id = id.from(_N, "ListAliasesInput", "Limit"),
         type = "integer",
         name = "Limit",
         target_id = prelude.Integer.id,
      }),
      Marker = schema.new({
         id = id.from(_N, "ListAliasesInput", "Marker"),
         type = "string",
         name = "Marker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListAliasesOutput = schema.new({
   id = id.from(_N, "ListAliasesResponse"),
   type = "structure",
   members = {
      Aliases = schema.new({
         id = id.from(_N, "ListAliasesOutput", "Aliases"),
         type = "list",
         name = "Aliases",
         target_id = prelude.Document.id,
         list_member = M.AliasListEntry,
      }),
      NextMarker = schema.new({
         id = id.from(_N, "ListAliasesOutput", "NextMarker"),
         type = "string",
         name = "NextMarker",
         target_id = prelude.String.id,
      }),
      Truncated = schema.new({
         id = id.from(_N, "ListAliasesOutput", "Truncated"),
         type = "boolean",
         name = "Truncated",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.ListGrantsInput = schema.new({
   id = id.from(_N, "ListGrantsRequest"),
   type = "structure",
   members = {
      Limit = schema.new({
         id = id.from(_N, "ListGrantsInput", "Limit"),
         type = "integer",
         name = "Limit",
         target_id = prelude.Integer.id,
      }),
      Marker = schema.new({
         id = id.from(_N, "ListGrantsInput", "Marker"),
         type = "string",
         name = "Marker",
         target_id = prelude.String.id,
      }),
      KeyId = schema.new({
         id = id.from(_N, "ListGrantsInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      GrantId = schema.new({
         id = id.from(_N, "ListGrantsInput", "GrantId"),
         type = "string",
         name = "GrantId",
         target_id = prelude.String.id,
      }),
      GranteePrincipal = schema.new({
         id = id.from(_N, "ListGrantsInput", "GranteePrincipal"),
         type = "string",
         name = "GranteePrincipal",
         target_id = prelude.String.id,
      }),
   },
})

M.ListGrantsOutput = schema.new({
   id = id.from(_N, "ListGrantsResponse"),
   type = "structure",
   members = {
      Grants = schema.new({
         id = id.from(_N, "ListGrantsOutput", "Grants"),
         type = "list",
         name = "Grants",
         target_id = prelude.Document.id,
         list_member = M.GrantListEntry,
      }),
      NextMarker = schema.new({
         id = id.from(_N, "ListGrantsOutput", "NextMarker"),
         type = "string",
         name = "NextMarker",
         target_id = prelude.String.id,
      }),
      Truncated = schema.new({
         id = id.from(_N, "ListGrantsOutput", "Truncated"),
         type = "boolean",
         name = "Truncated",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.ListKeyPoliciesInput = schema.new({
   id = id.from(_N, "ListKeyPoliciesRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "ListKeyPoliciesInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Limit = schema.new({
         id = id.from(_N, "ListKeyPoliciesInput", "Limit"),
         type = "integer",
         name = "Limit",
         target_id = prelude.Integer.id,
      }),
      Marker = schema.new({
         id = id.from(_N, "ListKeyPoliciesInput", "Marker"),
         type = "string",
         name = "Marker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListKeyPoliciesOutput = schema.new({
   id = id.from(_N, "ListKeyPoliciesResponse"),
   type = "structure",
   members = {
      PolicyNames = schema.new({
         id = id.from(_N, "ListKeyPoliciesOutput", "PolicyNames"),
         type = "list",
         name = "PolicyNames",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      NextMarker = schema.new({
         id = id.from(_N, "ListKeyPoliciesOutput", "NextMarker"),
         type = "string",
         name = "NextMarker",
         target_id = prelude.String.id,
      }),
      Truncated = schema.new({
         id = id.from(_N, "ListKeyPoliciesOutput", "Truncated"),
         type = "boolean",
         name = "Truncated",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.ListKeyRotationsInput = schema.new({
   id = id.from(_N, "ListKeyRotationsRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "ListKeyRotationsInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      IncludeKeyMaterial = schema.new({
         id = id.from(_N, "ListKeyRotationsInput", "IncludeKeyMaterial"),
         type = "string",
         name = "IncludeKeyMaterial",
         target_id = prelude.String.id,
      }),
      Limit = schema.new({
         id = id.from(_N, "ListKeyRotationsInput", "Limit"),
         type = "integer",
         name = "Limit",
         target_id = prelude.Integer.id,
      }),
      Marker = schema.new({
         id = id.from(_N, "ListKeyRotationsInput", "Marker"),
         type = "string",
         name = "Marker",
         target_id = prelude.String.id,
      }),
   },
})

M.RotationsListEntry = schema.new({
   id = id.from(_N, "RotationsListEntry"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "RotationsListEntry", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      KeyMaterialId = schema.new({
         id = id.from(_N, "RotationsListEntry", "KeyMaterialId"),
         type = "string",
         name = "KeyMaterialId",
         target_id = prelude.String.id,
      }),
      KeyMaterialDescription = schema.new({
         id = id.from(_N, "RotationsListEntry", "KeyMaterialDescription"),
         type = "string",
         name = "KeyMaterialDescription",
         target_id = prelude.String.id,
      }),
      ImportState = schema.new({
         id = id.from(_N, "RotationsListEntry", "ImportState"),
         type = "string",
         name = "ImportState",
         target_id = prelude.String.id,
      }),
      KeyMaterialState = schema.new({
         id = id.from(_N, "RotationsListEntry", "KeyMaterialState"),
         type = "string",
         name = "KeyMaterialState",
         target_id = prelude.String.id,
      }),
      ExpirationModel = schema.new({
         id = id.from(_N, "RotationsListEntry", "ExpirationModel"),
         type = "string",
         name = "ExpirationModel",
         target_id = prelude.String.id,
      }),
      ValidTo = schema.new({
         id = id.from(_N, "RotationsListEntry", "ValidTo"),
         type = "timestamp",
         name = "ValidTo",
         target_id = prelude.Timestamp.id,
      }),
      RotationDate = schema.new({
         id = id.from(_N, "RotationsListEntry", "RotationDate"),
         type = "timestamp",
         name = "RotationDate",
         target_id = prelude.Timestamp.id,
      }),
      RotationType = schema.new({
         id = id.from(_N, "RotationsListEntry", "RotationType"),
         type = "string",
         name = "RotationType",
         target_id = prelude.String.id,
      }),
   },
})

M.ListKeyRotationsOutput = schema.new({
   id = id.from(_N, "ListKeyRotationsResponse"),
   type = "structure",
   members = {
      Rotations = schema.new({
         id = id.from(_N, "ListKeyRotationsOutput", "Rotations"),
         type = "list",
         name = "Rotations",
         target_id = prelude.Document.id,
         list_member = M.RotationsListEntry,
      }),
      NextMarker = schema.new({
         id = id.from(_N, "ListKeyRotationsOutput", "NextMarker"),
         type = "string",
         name = "NextMarker",
         target_id = prelude.String.id,
      }),
      Truncated = schema.new({
         id = id.from(_N, "ListKeyRotationsOutput", "Truncated"),
         type = "boolean",
         name = "Truncated",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.ListKeysInput = schema.new({
   id = id.from(_N, "ListKeysRequest"),
   type = "structure",
   members = {
      Limit = schema.new({
         id = id.from(_N, "ListKeysInput", "Limit"),
         type = "integer",
         name = "Limit",
         target_id = prelude.Integer.id,
      }),
      Marker = schema.new({
         id = id.from(_N, "ListKeysInput", "Marker"),
         type = "string",
         name = "Marker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListKeysOutput = schema.new({
   id = id.from(_N, "ListKeysResponse"),
   type = "structure",
   members = {
      Keys = schema.new({
         id = id.from(_N, "ListKeysOutput", "Keys"),
         type = "list",
         name = "Keys",
         target_id = prelude.Document.id,
         list_member = M.KeyListEntry,
      }),
      NextMarker = schema.new({
         id = id.from(_N, "ListKeysOutput", "NextMarker"),
         type = "string",
         name = "NextMarker",
         target_id = prelude.String.id,
      }),
      Truncated = schema.new({
         id = id.from(_N, "ListKeysOutput", "Truncated"),
         type = "boolean",
         name = "Truncated",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.ListResourceTagsInput = schema.new({
   id = id.from(_N, "ListResourceTagsRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "ListResourceTagsInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Limit = schema.new({
         id = id.from(_N, "ListResourceTagsInput", "Limit"),
         type = "integer",
         name = "Limit",
         target_id = prelude.Integer.id,
      }),
      Marker = schema.new({
         id = id.from(_N, "ListResourceTagsInput", "Marker"),
         type = "string",
         name = "Marker",
         target_id = prelude.String.id,
      }),
   },
})

M.ListResourceTagsOutput = schema.new({
   id = id.from(_N, "ListResourceTagsResponse"),
   type = "structure",
   members = {
      Tags = schema.new({
         id = id.from(_N, "ListResourceTagsOutput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
      NextMarker = schema.new({
         id = id.from(_N, "ListResourceTagsOutput", "NextMarker"),
         type = "string",
         name = "NextMarker",
         target_id = prelude.String.id,
      }),
      Truncated = schema.new({
         id = id.from(_N, "ListResourceTagsOutput", "Truncated"),
         type = "boolean",
         name = "Truncated",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.ListRetirableGrantsInput = schema.new({
   id = id.from(_N, "ListRetirableGrantsRequest"),
   type = "structure",
   members = {
      Limit = schema.new({
         id = id.from(_N, "ListRetirableGrantsInput", "Limit"),
         type = "integer",
         name = "Limit",
         target_id = prelude.Integer.id,
      }),
      Marker = schema.new({
         id = id.from(_N, "ListRetirableGrantsInput", "Marker"),
         type = "string",
         name = "Marker",
         target_id = prelude.String.id,
      }),
      RetiringPrincipal = schema.new({
         id = id.from(_N, "ListRetirableGrantsInput", "RetiringPrincipal"),
         type = "string",
         name = "RetiringPrincipal",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.ListRetirableGrantsOutput = schema.new({
   id = id.from(_N, "ListGrantsResponse"),
   type = "structure",
   members = {
      Grants = schema.new({
         id = id.from(_N, "ListRetirableGrantsOutput", "Grants"),
         type = "list",
         name = "Grants",
         target_id = prelude.Document.id,
         list_member = M.GrantListEntry,
      }),
      NextMarker = schema.new({
         id = id.from(_N, "ListRetirableGrantsOutput", "NextMarker"),
         type = "string",
         name = "NextMarker",
         target_id = prelude.String.id,
      }),
      Truncated = schema.new({
         id = id.from(_N, "ListRetirableGrantsOutput", "Truncated"),
         type = "boolean",
         name = "Truncated",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.PutKeyPolicyInput = schema.new({
   id = id.from(_N, "PutKeyPolicyRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "PutKeyPolicyInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PolicyName = schema.new({
         id = id.from(_N, "PutKeyPolicyInput", "PolicyName"),
         type = "string",
         name = "PolicyName",
         target_id = prelude.String.id,
      }),
      Policy = schema.new({
         id = id.from(_N, "PutKeyPolicyInput", "Policy"),
         type = "string",
         name = "Policy",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      BypassPolicyLockoutSafetyCheck = schema.new({
         id = id.from(_N, "PutKeyPolicyInput", "BypassPolicyLockoutSafetyCheck"),
         type = "boolean",
         name = "BypassPolicyLockoutSafetyCheck",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
   },
})

M.PutKeyPolicyOutput = prelude.Unit

M.ReEncryptInput = schema.new({
   id = id.from(_N, "ReEncryptRequest"),
   type = "structure",
   members = {
      CiphertextBlob = schema.new({
         id = id.from(_N, "ReEncryptInput", "CiphertextBlob"),
         type = "blob",
         name = "CiphertextBlob",
         target_id = prelude.Blob.id,
      }),
      SourceEncryptionContext = schema.new({
         id = id.from(_N, "ReEncryptInput", "SourceEncryptionContext"),
         type = "map",
         name = "SourceEncryptionContext",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      SourceKeyId = schema.new({
         id = id.from(_N, "ReEncryptInput", "SourceKeyId"),
         type = "string",
         name = "SourceKeyId",
         target_id = prelude.String.id,
      }),
      DestinationKeyId = schema.new({
         id = id.from(_N, "ReEncryptInput", "DestinationKeyId"),
         type = "string",
         name = "DestinationKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DestinationEncryptionContext = schema.new({
         id = id.from(_N, "ReEncryptInput", "DestinationEncryptionContext"),
         type = "map",
         name = "DestinationEncryptionContext",
         target_id = prelude.Document.id,
         map_key = prelude.String,
         map_value = prelude.String,
      }),
      SourceEncryptionAlgorithm = schema.new({
         id = id.from(_N, "ReEncryptInput", "SourceEncryptionAlgorithm"),
         type = "string",
         name = "SourceEncryptionAlgorithm",
         target_id = prelude.String.id,
      }),
      DestinationEncryptionAlgorithm = schema.new({
         id = id.from(_N, "ReEncryptInput", "DestinationEncryptionAlgorithm"),
         type = "string",
         name = "DestinationEncryptionAlgorithm",
         target_id = prelude.String.id,
      }),
      GrantTokens = schema.new({
         id = id.from(_N, "ReEncryptInput", "GrantTokens"),
         type = "list",
         name = "GrantTokens",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DryRun = schema.new({
         id = id.from(_N, "ReEncryptInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
      DryRunModifiers = schema.new({
         id = id.from(_N, "ReEncryptInput", "DryRunModifiers"),
         type = "list",
         name = "DryRunModifiers",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
   },
})

M.ReEncryptOutput = schema.new({
   id = id.from(_N, "ReEncryptResponse"),
   type = "structure",
   members = {
      CiphertextBlob = schema.new({
         id = id.from(_N, "ReEncryptOutput", "CiphertextBlob"),
         type = "blob",
         name = "CiphertextBlob",
         target_id = prelude.Blob.id,
      }),
      SourceKeyId = schema.new({
         id = id.from(_N, "ReEncryptOutput", "SourceKeyId"),
         type = "string",
         name = "SourceKeyId",
         target_id = prelude.String.id,
      }),
      KeyId = schema.new({
         id = id.from(_N, "ReEncryptOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      SourceEncryptionAlgorithm = schema.new({
         id = id.from(_N, "ReEncryptOutput", "SourceEncryptionAlgorithm"),
         type = "string",
         name = "SourceEncryptionAlgorithm",
         target_id = prelude.String.id,
      }),
      DestinationEncryptionAlgorithm = schema.new({
         id = id.from(_N, "ReEncryptOutput", "DestinationEncryptionAlgorithm"),
         type = "string",
         name = "DestinationEncryptionAlgorithm",
         target_id = prelude.String.id,
      }),
      SourceKeyMaterialId = schema.new({
         id = id.from(_N, "ReEncryptOutput", "SourceKeyMaterialId"),
         type = "string",
         name = "SourceKeyMaterialId",
         target_id = prelude.String.id,
      }),
      DestinationKeyMaterialId = schema.new({
         id = id.from(_N, "ReEncryptOutput", "DestinationKeyMaterialId"),
         type = "string",
         name = "DestinationKeyMaterialId",
         target_id = prelude.String.id,
      }),
   },
})

M.ReplicateKeyInput = schema.new({
   id = id.from(_N, "ReplicateKeyRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "ReplicateKeyInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      ReplicaRegion = schema.new({
         id = id.from(_N, "ReplicateKeyInput", "ReplicaRegion"),
         type = "string",
         name = "ReplicaRegion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Policy = schema.new({
         id = id.from(_N, "ReplicateKeyInput", "Policy"),
         type = "string",
         name = "Policy",
         target_id = prelude.String.id,
      }),
      BypassPolicyLockoutSafetyCheck = schema.new({
         id = id.from(_N, "ReplicateKeyInput", "BypassPolicyLockoutSafetyCheck"),
         type = "boolean",
         name = "BypassPolicyLockoutSafetyCheck",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      Description = schema.new({
         id = id.from(_N, "ReplicateKeyInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
      }),
      Tags = schema.new({
         id = id.from(_N, "ReplicateKeyInput", "Tags"),
         type = "list",
         name = "Tags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.ReplicateKeyOutput = schema.new({
   id = id.from(_N, "ReplicateKeyResponse"),
   type = "structure",
   members = {
      ReplicaKeyMetadata = schema.new({
         id = id.from(_N, "ReplicateKeyOutput", "ReplicaKeyMetadata"),
         type = "structure",
         name = "ReplicaKeyMetadata",
         target_id = id.from(_N, "KeyMetadata"),
         target = M.KeyMetadata,
      }),
      ReplicaPolicy = schema.new({
         id = id.from(_N, "ReplicateKeyOutput", "ReplicaPolicy"),
         type = "string",
         name = "ReplicaPolicy",
         target_id = prelude.String.id,
      }),
      ReplicaTags = schema.new({
         id = id.from(_N, "ReplicateKeyOutput", "ReplicaTags"),
         type = "list",
         name = "ReplicaTags",
         target_id = prelude.Document.id,
         list_member = M.Tag,
      }),
   },
})

M.RetireGrantInput = schema.new({
   id = id.from(_N, "RetireGrantRequest"),
   type = "structure",
   members = {
      GrantToken = schema.new({
         id = id.from(_N, "RetireGrantInput", "GrantToken"),
         type = "string",
         name = "GrantToken",
         target_id = prelude.String.id,
      }),
      KeyId = schema.new({
         id = id.from(_N, "RetireGrantInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      GrantId = schema.new({
         id = id.from(_N, "RetireGrantInput", "GrantId"),
         type = "string",
         name = "GrantId",
         target_id = prelude.String.id,
      }),
      DryRun = schema.new({
         id = id.from(_N, "RetireGrantInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.RetireGrantOutput = prelude.Unit

M.RevokeGrantInput = schema.new({
   id = id.from(_N, "RevokeGrantRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "RevokeGrantInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      GrantId = schema.new({
         id = id.from(_N, "RevokeGrantInput", "GrantId"),
         type = "string",
         name = "GrantId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DryRun = schema.new({
         id = id.from(_N, "RevokeGrantInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.RevokeGrantOutput = prelude.Unit

M.RotateKeyOnDemandInput = schema.new({
   id = id.from(_N, "RotateKeyOnDemandRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "RotateKeyOnDemandInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.RotateKeyOnDemandOutput = schema.new({
   id = id.from(_N, "RotateKeyOnDemandResponse"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "RotateKeyOnDemandOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
   },
})

M.ScheduleKeyDeletionInput = schema.new({
   id = id.from(_N, "ScheduleKeyDeletionRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "ScheduleKeyDeletionInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PendingWindowInDays = schema.new({
         id = id.from(_N, "ScheduleKeyDeletionInput", "PendingWindowInDays"),
         type = "integer",
         name = "PendingWindowInDays",
         target_id = prelude.Integer.id,
      }),
   },
})

M.ScheduleKeyDeletionOutput = schema.new({
   id = id.from(_N, "ScheduleKeyDeletionResponse"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "ScheduleKeyDeletionOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      DeletionDate = schema.new({
         id = id.from(_N, "ScheduleKeyDeletionOutput", "DeletionDate"),
         type = "timestamp",
         name = "DeletionDate",
         target_id = prelude.Timestamp.id,
      }),
      KeyState = schema.new({
         id = id.from(_N, "ScheduleKeyDeletionOutput", "KeyState"),
         type = "string",
         name = "KeyState",
         target_id = prelude.String.id,
      }),
      PendingWindowInDays = schema.new({
         id = id.from(_N, "ScheduleKeyDeletionOutput", "PendingWindowInDays"),
         type = "integer",
         name = "PendingWindowInDays",
         target_id = prelude.Integer.id,
      }),
   },
})

M.SignInput = schema.new({
   id = id.from(_N, "SignRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "SignInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Message = schema.new({
         id = id.from(_N, "SignInput", "Message"),
         type = "blob",
         name = "Message",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MessageType = schema.new({
         id = id.from(_N, "SignInput", "MessageType"),
         type = "string",
         name = "MessageType",
         target_id = prelude.String.id,
      }),
      GrantTokens = schema.new({
         id = id.from(_N, "SignInput", "GrantTokens"),
         type = "list",
         name = "GrantTokens",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      SigningAlgorithm = schema.new({
         id = id.from(_N, "SignInput", "SigningAlgorithm"),
         type = "string",
         name = "SigningAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      DryRun = schema.new({
         id = id.from(_N, "SignInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.SignOutput = schema.new({
   id = id.from(_N, "SignResponse"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "SignOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      Signature = schema.new({
         id = id.from(_N, "SignOutput", "Signature"),
         type = "blob",
         name = "Signature",
         target_id = prelude.Blob.id,
      }),
      SigningAlgorithm = schema.new({
         id = id.from(_N, "SignOutput", "SigningAlgorithm"),
         type = "string",
         name = "SigningAlgorithm",
         target_id = prelude.String.id,
      }),
   },
})

M.TagResourceInput = schema.new({
   id = id.from(_N, "TagResourceRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "TagResourceInput", "KeyId"),
         type = "string",
         name = "KeyId",
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

M.TagResourceOutput = prelude.Unit

M.UntagResourceInput = schema.new({
   id = id.from(_N, "UntagResourceRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "UntagResourceInput", "KeyId"),
         type = "string",
         name = "KeyId",
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

M.UntagResourceOutput = prelude.Unit

M.UpdateAliasInput = schema.new({
   id = id.from(_N, "UpdateAliasRequest"),
   type = "structure",
   members = {
      AliasName = schema.new({
         id = id.from(_N, "UpdateAliasInput", "AliasName"),
         type = "string",
         name = "AliasName",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      TargetKeyId = schema.new({
         id = id.from(_N, "UpdateAliasInput", "TargetKeyId"),
         type = "string",
         name = "TargetKeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateAliasOutput = prelude.Unit

M.UpdateCustomKeyStoreInput = schema.new({
   id = id.from(_N, "UpdateCustomKeyStoreRequest"),
   type = "structure",
   members = {
      CustomKeyStoreId = schema.new({
         id = id.from(_N, "UpdateCustomKeyStoreInput", "CustomKeyStoreId"),
         type = "string",
         name = "CustomKeyStoreId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      NewCustomKeyStoreName = schema.new({
         id = id.from(_N, "UpdateCustomKeyStoreInput", "NewCustomKeyStoreName"),
         type = "string",
         name = "NewCustomKeyStoreName",
         target_id = prelude.String.id,
      }),
      KeyStorePassword = schema.new({
         id = id.from(_N, "UpdateCustomKeyStoreInput", "KeyStorePassword"),
         type = "string",
         name = "KeyStorePassword",
         target_id = prelude.String.id,
      }),
      CloudHsmClusterId = schema.new({
         id = id.from(_N, "UpdateCustomKeyStoreInput", "CloudHsmClusterId"),
         type = "string",
         name = "CloudHsmClusterId",
         target_id = prelude.String.id,
      }),
      XksProxyUriEndpoint = schema.new({
         id = id.from(_N, "UpdateCustomKeyStoreInput", "XksProxyUriEndpoint"),
         type = "string",
         name = "XksProxyUriEndpoint",
         target_id = prelude.String.id,
      }),
      XksProxyUriPath = schema.new({
         id = id.from(_N, "UpdateCustomKeyStoreInput", "XksProxyUriPath"),
         type = "string",
         name = "XksProxyUriPath",
         target_id = prelude.String.id,
      }),
      XksProxyVpcEndpointServiceName = schema.new({
         id = id.from(_N, "UpdateCustomKeyStoreInput", "XksProxyVpcEndpointServiceName"),
         type = "string",
         name = "XksProxyVpcEndpointServiceName",
         target_id = prelude.String.id,
      }),
      XksProxyVpcEndpointServiceOwner = schema.new({
         id = id.from(_N, "UpdateCustomKeyStoreInput", "XksProxyVpcEndpointServiceOwner"),
         type = "string",
         name = "XksProxyVpcEndpointServiceOwner",
         target_id = prelude.String.id,
      }),
      XksProxyAuthenticationCredential = schema.new({
         id = id.from(_N, "UpdateCustomKeyStoreInput", "XksProxyAuthenticationCredential"),
         type = "structure",
         name = "XksProxyAuthenticationCredential",
         target_id = id.from(_N, "XksProxyAuthenticationCredentialType"),
         target = M.XksProxyAuthenticationCredentialType,
      }),
      XksProxyConnectivity = schema.new({
         id = id.from(_N, "UpdateCustomKeyStoreInput", "XksProxyConnectivity"),
         type = "string",
         name = "XksProxyConnectivity",
         target_id = prelude.String.id,
      }),
   },
})

M.UpdateCustomKeyStoreOutput = schema.new({
   id = id.from(_N, "UpdateCustomKeyStoreResponse"),
   type = "structure",
})

M.UpdateKeyDescriptionInput = schema.new({
   id = id.from(_N, "UpdateKeyDescriptionRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "UpdateKeyDescriptionInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Description = schema.new({
         id = id.from(_N, "UpdateKeyDescriptionInput", "Description"),
         type = "string",
         name = "Description",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdateKeyDescriptionOutput = prelude.Unit

M.UpdatePrimaryRegionInput = schema.new({
   id = id.from(_N, "UpdatePrimaryRegionRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "UpdatePrimaryRegionInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      PrimaryRegion = schema.new({
         id = id.from(_N, "UpdatePrimaryRegionInput", "PrimaryRegion"),
         type = "string",
         name = "PrimaryRegion",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
   },
})

M.UpdatePrimaryRegionOutput = prelude.Unit

M.VerifyInput = schema.new({
   id = id.from(_N, "VerifyRequest"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "VerifyInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Message = schema.new({
         id = id.from(_N, "VerifyInput", "Message"),
         type = "blob",
         name = "Message",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MessageType = schema.new({
         id = id.from(_N, "VerifyInput", "MessageType"),
         type = "string",
         name = "MessageType",
         target_id = prelude.String.id,
      }),
      Signature = schema.new({
         id = id.from(_N, "VerifyInput", "Signature"),
         type = "blob",
         name = "Signature",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      SigningAlgorithm = schema.new({
         id = id.from(_N, "VerifyInput", "SigningAlgorithm"),
         type = "string",
         name = "SigningAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      GrantTokens = schema.new({
         id = id.from(_N, "VerifyInput", "GrantTokens"),
         type = "list",
         name = "GrantTokens",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DryRun = schema.new({
         id = id.from(_N, "VerifyInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.VerifyOutput = schema.new({
   id = id.from(_N, "VerifyResponse"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "VerifyOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      SignatureValid = schema.new({
         id = id.from(_N, "VerifyOutput", "SignatureValid"),
         type = "boolean",
         name = "SignatureValid",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      SigningAlgorithm = schema.new({
         id = id.from(_N, "VerifyOutput", "SigningAlgorithm"),
         type = "string",
         name = "SigningAlgorithm",
         target_id = prelude.String.id,
      }),
   },
})

M.VerifyMacInput = schema.new({
   id = id.from(_N, "VerifyMacRequest"),
   type = "structure",
   members = {
      Message = schema.new({
         id = id.from(_N, "VerifyMacInput", "Message"),
         type = "blob",
         name = "Message",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      KeyId = schema.new({
         id = id.from(_N, "VerifyMacInput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      MacAlgorithm = schema.new({
         id = id.from(_N, "VerifyMacInput", "MacAlgorithm"),
         type = "string",
         name = "MacAlgorithm",
         target_id = prelude.String.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      Mac = schema.new({
         id = id.from(_N, "VerifyMacInput", "Mac"),
         type = "blob",
         name = "Mac",
         target_id = prelude.Blob.id,
         traits = {
            [traits.REQUIRED] = {},
         },
      }),
      GrantTokens = schema.new({
         id = id.from(_N, "VerifyMacInput", "GrantTokens"),
         type = "list",
         name = "GrantTokens",
         target_id = prelude.Document.id,
         list_member = prelude.String,
      }),
      DryRun = schema.new({
         id = id.from(_N, "VerifyMacInput", "DryRun"),
         type = "boolean",
         name = "DryRun",
         target_id = prelude.Boolean.id,
      }),
   },
})

M.VerifyMacOutput = schema.new({
   id = id.from(_N, "VerifyMacResponse"),
   type = "structure",
   members = {
      KeyId = schema.new({
         id = id.from(_N, "VerifyMacOutput", "KeyId"),
         type = "string",
         name = "KeyId",
         target_id = prelude.String.id,
      }),
      MacValid = schema.new({
         id = id.from(_N, "VerifyMacOutput", "MacValid"),
         type = "boolean",
         name = "MacValid",
         target_id = prelude.Boolean.id,
         traits = {
            [traits.DEFAULT] = { value = false },
         },
      }),
      MacAlgorithm = schema.new({
         id = id.from(_N, "VerifyMacOutput", "MacAlgorithm"),
         type = "string",
         name = "MacAlgorithm",
         target_id = prelude.String.id,
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
   id = id.from("com.amazonaws.kms", "TrentService"),
   version = "2014-11-01",
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CancelKeyDeletion = schema.operation({
   id = id.from("com.amazonaws.kms", "CancelKeyDeletion"),
   input = M.CancelKeyDeletionInput,
   output = M.CancelKeyDeletionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ConnectCustomKeyStore = schema.operation({
   id = id.from("com.amazonaws.kms", "ConnectCustomKeyStore"),
   input = M.ConnectCustomKeyStoreInput,
   output = M.ConnectCustomKeyStoreOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateAlias = schema.operation({
   id = id.from("com.amazonaws.kms", "CreateAlias"),
   input = M.CreateAliasInput,
   output = M.CreateAliasOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateCustomKeyStore = schema.operation({
   id = id.from("com.amazonaws.kms", "CreateCustomKeyStore"),
   input = M.CreateCustomKeyStoreInput,
   output = M.CreateCustomKeyStoreOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateGrant = schema.operation({
   id = id.from("com.amazonaws.kms", "CreateGrant"),
   input = M.CreateGrantInput,
   output = M.CreateGrantOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.CreateKey = schema.operation({
   id = id.from("com.amazonaws.kms", "CreateKey"),
   input = M.CreateKeyInput,
   output = M.CreateKeyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.Decrypt = schema.operation({
   id = id.from("com.amazonaws.kms", "Decrypt"),
   input = M.DecryptInput,
   output = M.DecryptOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteAlias = schema.operation({
   id = id.from("com.amazonaws.kms", "DeleteAlias"),
   input = M.DeleteAliasInput,
   output = M.DeleteAliasOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteCustomKeyStore = schema.operation({
   id = id.from("com.amazonaws.kms", "DeleteCustomKeyStore"),
   input = M.DeleteCustomKeyStoreInput,
   output = M.DeleteCustomKeyStoreOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeleteImportedKeyMaterial = schema.operation({
   id = id.from("com.amazonaws.kms", "DeleteImportedKeyMaterial"),
   input = M.DeleteImportedKeyMaterialInput,
   output = M.DeleteImportedKeyMaterialOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DeriveSharedSecret = schema.operation({
   id = id.from("com.amazonaws.kms", "DeriveSharedSecret"),
   input = M.DeriveSharedSecretInput,
   output = M.DeriveSharedSecretOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeCustomKeyStores = schema.operation({
   id = id.from("com.amazonaws.kms", "DescribeCustomKeyStores"),
   input = M.DescribeCustomKeyStoresInput,
   output = M.DescribeCustomKeyStoresOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DescribeKey = schema.operation({
   id = id.from("com.amazonaws.kms", "DescribeKey"),
   input = M.DescribeKeyInput,
   output = M.DescribeKeyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisableKey = schema.operation({
   id = id.from("com.amazonaws.kms", "DisableKey"),
   input = M.DisableKeyInput,
   output = M.DisableKeyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisableKeyRotation = schema.operation({
   id = id.from("com.amazonaws.kms", "DisableKeyRotation"),
   input = M.DisableKeyRotationInput,
   output = M.DisableKeyRotationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.DisconnectCustomKeyStore = schema.operation({
   id = id.from("com.amazonaws.kms", "DisconnectCustomKeyStore"),
   input = M.DisconnectCustomKeyStoreInput,
   output = M.DisconnectCustomKeyStoreOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.EnableKey = schema.operation({
   id = id.from("com.amazonaws.kms", "EnableKey"),
   input = M.EnableKeyInput,
   output = M.EnableKeyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.EnableKeyRotation = schema.operation({
   id = id.from("com.amazonaws.kms", "EnableKeyRotation"),
   input = M.EnableKeyRotationInput,
   output = M.EnableKeyRotationOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.Encrypt = schema.operation({
   id = id.from("com.amazonaws.kms", "Encrypt"),
   input = M.EncryptInput,
   output = M.EncryptOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GenerateDataKey = schema.operation({
   id = id.from("com.amazonaws.kms", "GenerateDataKey"),
   input = M.GenerateDataKeyInput,
   output = M.GenerateDataKeyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GenerateDataKeyPair = schema.operation({
   id = id.from("com.amazonaws.kms", "GenerateDataKeyPair"),
   input = M.GenerateDataKeyPairInput,
   output = M.GenerateDataKeyPairOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GenerateDataKeyPairWithoutPlaintext = schema.operation({
   id = id.from("com.amazonaws.kms", "GenerateDataKeyPairWithoutPlaintext"),
   input = M.GenerateDataKeyPairWithoutPlaintextInput,
   output = M.GenerateDataKeyPairWithoutPlaintextOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GenerateDataKeyWithoutPlaintext = schema.operation({
   id = id.from("com.amazonaws.kms", "GenerateDataKeyWithoutPlaintext"),
   input = M.GenerateDataKeyWithoutPlaintextInput,
   output = M.GenerateDataKeyWithoutPlaintextOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GenerateMac = schema.operation({
   id = id.from("com.amazonaws.kms", "GenerateMac"),
   input = M.GenerateMacInput,
   output = M.GenerateMacOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GenerateRandom = schema.operation({
   id = id.from("com.amazonaws.kms", "GenerateRandom"),
   input = M.GenerateRandomInput,
   output = M.GenerateRandomOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetKeyLastUsage = schema.operation({
   id = id.from("com.amazonaws.kms", "GetKeyLastUsage"),
   input = M.GetKeyLastUsageInput,
   output = M.GetKeyLastUsageOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetKeyPolicy = schema.operation({
   id = id.from("com.amazonaws.kms", "GetKeyPolicy"),
   input = M.GetKeyPolicyInput,
   output = M.GetKeyPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetKeyRotationStatus = schema.operation({
   id = id.from("com.amazonaws.kms", "GetKeyRotationStatus"),
   input = M.GetKeyRotationStatusInput,
   output = M.GetKeyRotationStatusOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetParametersForImport = schema.operation({
   id = id.from("com.amazonaws.kms", "GetParametersForImport"),
   input = M.GetParametersForImportInput,
   output = M.GetParametersForImportOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.GetPublicKey = schema.operation({
   id = id.from("com.amazonaws.kms", "GetPublicKey"),
   input = M.GetPublicKeyInput,
   output = M.GetPublicKeyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ImportKeyMaterial = schema.operation({
   id = id.from("com.amazonaws.kms", "ImportKeyMaterial"),
   input = M.ImportKeyMaterialInput,
   output = M.ImportKeyMaterialOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListAliases = schema.operation({
   id = id.from("com.amazonaws.kms", "ListAliases"),
   input = M.ListAliasesInput,
   output = M.ListAliasesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListGrants = schema.operation({
   id = id.from("com.amazonaws.kms", "ListGrants"),
   input = M.ListGrantsInput,
   output = M.ListGrantsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListKeyPolicies = schema.operation({
   id = id.from("com.amazonaws.kms", "ListKeyPolicies"),
   input = M.ListKeyPoliciesInput,
   output = M.ListKeyPoliciesOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListKeyRotations = schema.operation({
   id = id.from("com.amazonaws.kms", "ListKeyRotations"),
   input = M.ListKeyRotationsInput,
   output = M.ListKeyRotationsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListKeys = schema.operation({
   id = id.from("com.amazonaws.kms", "ListKeys"),
   input = M.ListKeysInput,
   output = M.ListKeysOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListResourceTags = schema.operation({
   id = id.from("com.amazonaws.kms", "ListResourceTags"),
   input = M.ListResourceTagsInput,
   output = M.ListResourceTagsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ListRetirableGrants = schema.operation({
   id = id.from("com.amazonaws.kms", "ListRetirableGrants"),
   input = M.ListRetirableGrantsInput,
   output = M.ListRetirableGrantsOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.PutKeyPolicy = schema.operation({
   id = id.from("com.amazonaws.kms", "PutKeyPolicy"),
   input = M.PutKeyPolicyInput,
   output = M.PutKeyPolicyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ReEncrypt = schema.operation({
   id = id.from("com.amazonaws.kms", "ReEncrypt"),
   input = M.ReEncryptInput,
   output = M.ReEncryptOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ReplicateKey = schema.operation({
   id = id.from("com.amazonaws.kms", "ReplicateKey"),
   input = M.ReplicateKeyInput,
   output = M.ReplicateKeyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RetireGrant = schema.operation({
   id = id.from("com.amazonaws.kms", "RetireGrant"),
   input = M.RetireGrantInput,
   output = M.RetireGrantOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RevokeGrant = schema.operation({
   id = id.from("com.amazonaws.kms", "RevokeGrant"),
   input = M.RevokeGrantInput,
   output = M.RevokeGrantOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.RotateKeyOnDemand = schema.operation({
   id = id.from("com.amazonaws.kms", "RotateKeyOnDemand"),
   input = M.RotateKeyOnDemandInput,
   output = M.RotateKeyOnDemandOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.ScheduleKeyDeletion = schema.operation({
   id = id.from("com.amazonaws.kms", "ScheduleKeyDeletion"),
   input = M.ScheduleKeyDeletionInput,
   output = M.ScheduleKeyDeletionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.Sign = schema.operation({
   id = id.from("com.amazonaws.kms", "Sign"),
   input = M.SignInput,
   output = M.SignOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.TagResource = schema.operation({
   id = id.from("com.amazonaws.kms", "TagResource"),
   input = M.TagResourceInput,
   output = M.TagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UntagResource = schema.operation({
   id = id.from("com.amazonaws.kms", "UntagResource"),
   input = M.UntagResourceInput,
   output = M.UntagResourceOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateAlias = schema.operation({
   id = id.from("com.amazonaws.kms", "UpdateAlias"),
   input = M.UpdateAliasInput,
   output = M.UpdateAliasOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateCustomKeyStore = schema.operation({
   id = id.from("com.amazonaws.kms", "UpdateCustomKeyStore"),
   input = M.UpdateCustomKeyStoreInput,
   output = M.UpdateCustomKeyStoreOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdateKeyDescription = schema.operation({
   id = id.from("com.amazonaws.kms", "UpdateKeyDescription"),
   input = M.UpdateKeyDescriptionInput,
   output = M.UpdateKeyDescriptionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.UpdatePrimaryRegion = schema.operation({
   id = id.from("com.amazonaws.kms", "UpdatePrimaryRegion"),
   input = M.UpdatePrimaryRegionInput,
   output = M.UpdatePrimaryRegionOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.Verify = schema.operation({
   id = id.from("com.amazonaws.kms", "Verify"),
   input = M.VerifyInput,
   output = M.VerifyOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

M.VerifyMac = schema.operation({
   id = id.from("com.amazonaws.kms", "VerifyMac"),
   input = M.VerifyMacInput,
   output = M.VerifyMacOutput,
   traits = {
      [traits.AUTH] = {
         { scheme_id = "aws.auth#sigv4" },
      },
   },
})

return M
