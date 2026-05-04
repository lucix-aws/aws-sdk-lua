local M = {}

M.AssumedRoleUser = {
    type = "structure",
    id = "AssumedRoleUser",
    members = {
        AssumedRoleId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.PolicyDescriptorType = {
    type = "structure",
    id = "PolicyDescriptorType",
    members = {
        arn = {
            type = "string",
        },
    },
}

M.ProvidedContext = {
    type = "structure",
    id = "ProvidedContext",
    members = {
        ProviderArn = {
            type = "string",
        },
        ContextAssertion = {
            type = "string",
        },
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

M.AssumeRoleInput = {
    type = "structure",
    id = "AssumeRoleInput",
    members = {
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleSessionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyArns = {
            type = "list",
            member = M.PolicyDescriptorType,
        },
        Policy = {
            type = "string",
        },
        DurationSeconds = {
            type = "integer",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
        TransitiveTagKeys = {
            type = "list",
            member = { type = "string" },
        },
        ExternalId = {
            type = "string",
        },
        SerialNumber = {
            type = "string",
        },
        TokenCode = {
            type = "string",
        },
        SourceIdentity = {
            type = "string",
        },
        ProvidedContexts = {
            type = "list",
            member = M.ProvidedContext,
        },
    },
}

M.Credentials = {
    type = "structure",
    id = "Credentials",
    members = {
        AccessKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SecretAccessKey = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SessionToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Expiration = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.AssumeRoleOutput = {
    type = "structure",
    id = "AssumeRoleOutput",
    members = {
        Credentials = M.Credentials,
        AssumedRoleUser = M.AssumedRoleUser,
        PackedPolicySize = {
            type = "integer",
        },
        SourceIdentity = {
            type = "string",
        },
    },
}

M.ExpiredTokenException = {
    type = "structure",
    id = "ExpiredTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.MalformedPolicyDocumentException = {
    type = "structure",
    id = "MalformedPolicyDocumentException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PackedPolicyTooLargeException = {
    type = "structure",
    id = "PackedPolicyTooLargeException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.RegionDisabledException = {
    type = "structure",
    id = "RegionDisabledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssumeRoleWithSAMLInput = {
    type = "structure",
    id = "AssumeRoleWithSAMLInput",
    members = {
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PrincipalArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        SAMLAssertion = {
            type = "string",
            traits = {
                required = true,
            },
        },
        PolicyArns = {
            type = "list",
            member = M.PolicyDescriptorType,
        },
        Policy = {
            type = "string",
        },
        DurationSeconds = {
            type = "integer",
        },
    },
}

M.AssumeRoleWithSAMLOutput = {
    type = "structure",
    id = "AssumeRoleWithSAMLOutput",
    members = {
        Credentials = M.Credentials,
        AssumedRoleUser = M.AssumedRoleUser,
        PackedPolicySize = {
            type = "integer",
        },
        Subject = {
            type = "string",
        },
        SubjectType = {
            type = "string",
        },
        Issuer = {
            type = "string",
        },
        Audience = {
            type = "string",
        },
        NameQualifier = {
            type = "string",
        },
        SourceIdentity = {
            type = "string",
        },
    },
}

M.IDPRejectedClaimException = {
    type = "structure",
    id = "IDPRejectedClaimException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.InvalidIdentityTokenException = {
    type = "structure",
    id = "InvalidIdentityTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssumeRoleWithWebIdentityInput = {
    type = "structure",
    id = "AssumeRoleWithWebIdentityInput",
    members = {
        RoleArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        RoleSessionName = {
            type = "string",
            traits = {
                required = true,
            },
        },
        WebIdentityToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
        ProviderId = {
            type = "string",
        },
        PolicyArns = {
            type = "list",
            member = M.PolicyDescriptorType,
        },
        Policy = {
            type = "string",
        },
        DurationSeconds = {
            type = "integer",
        },
    },
}

M.AssumeRoleWithWebIdentityOutput = {
    type = "structure",
    id = "AssumeRoleWithWebIdentityOutput",
    members = {
        Credentials = M.Credentials,
        SubjectFromWebIdentityToken = {
            type = "string",
        },
        AssumedRoleUser = M.AssumedRoleUser,
        PackedPolicySize = {
            type = "integer",
        },
        Provider = {
            type = "string",
        },
        Audience = {
            type = "string",
        },
        SourceIdentity = {
            type = "string",
        },
    },
}

M.IDPCommunicationErrorException = {
    type = "structure",
    id = "IDPCommunicationErrorException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.AssumeRootInput = {
    type = "structure",
    id = "AssumeRootInput",
    members = {
        TargetPrincipal = {
            type = "string",
            traits = {
                required = true,
            },
        },
        TaskPolicyArn = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PolicyDescriptorType }),
        DurationSeconds = {
            type = "integer",
        },
    },
}

M.AssumeRootOutput = {
    type = "structure",
    id = "AssumeRootOutput",
    members = {
        Credentials = M.Credentials,
        SourceIdentity = {
            type = "string",
        },
    },
}

M.DecodeAuthorizationMessageInput = {
    type = "structure",
    id = "DecodeAuthorizationMessageInput",
    members = {
        EncodedMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.DecodeAuthorizationMessageOutput = {
    type = "structure",
    id = "DecodeAuthorizationMessageOutput",
    members = {
        DecodedMessage = {
            type = "string",
        },
    },
}

M.InvalidAuthorizationMessageException = {
    type = "structure",
    id = "InvalidAuthorizationMessageException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetAccessKeyInfoInput = {
    type = "structure",
    id = "GetAccessKeyInfoInput",
    members = {
        AccessKeyId = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAccessKeyInfoOutput = {
    type = "structure",
    id = "GetAccessKeyInfoOutput",
    members = {
        Account = {
            type = "string",
        },
    },
}

M.GetCallerIdentityInput = {
    type = "structure",
    id = "GetCallerIdentityInput",
}

M.GetCallerIdentityOutput = {
    type = "structure",
    id = "GetCallerIdentityOutput",
    members = {
        UserId = {
            type = "string",
        },
        Account = {
            type = "string",
        },
        Arn = {
            type = "string",
        },
    },
}

M.ExpiredTradeInTokenException = {
    type = "structure",
    id = "ExpiredTradeInTokenException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetDelegatedAccessTokenInput = {
    type = "structure",
    id = "GetDelegatedAccessTokenInput",
    members = {
        TradeInToken = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetDelegatedAccessTokenOutput = {
    type = "structure",
    id = "GetDelegatedAccessTokenOutput",
    members = {
        Credentials = M.Credentials,
        PackedPolicySize = {
            type = "integer",
        },
        AssumedPrincipal = {
            type = "string",
        },
    },
}

M.GetFederationTokenInput = {
    type = "structure",
    id = "GetFederationTokenInput",
    members = {
        Name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Policy = {
            type = "string",
        },
        PolicyArns = {
            type = "list",
            member = M.PolicyDescriptorType,
        },
        DurationSeconds = {
            type = "integer",
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.FederatedUser = {
    type = "structure",
    id = "FederatedUser",
    members = {
        FederatedUserId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Arn = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.GetFederationTokenOutput = {
    type = "structure",
    id = "GetFederationTokenOutput",
    members = {
        Credentials = M.Credentials,
        FederatedUser = M.FederatedUser,
        PackedPolicySize = {
            type = "integer",
        },
    },
}

M.GetSessionTokenInput = {
    type = "structure",
    id = "GetSessionTokenInput",
    members = {
        DurationSeconds = {
            type = "integer",
        },
        SerialNumber = {
            type = "string",
        },
        TokenCode = {
            type = "string",
        },
    },
}

M.GetSessionTokenOutput = {
    type = "structure",
    id = "GetSessionTokenOutput",
    members = {
        Credentials = M.Credentials,
    },
}

M.GetWebIdentityTokenInput = {
    type = "structure",
    id = "GetWebIdentityTokenInput",
    members = {
        Audience = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
        DurationSeconds = {
            type = "integer",
        },
        SigningAlgorithm = {
            type = "string",
            traits = {
                required = true,
            },
        },
        Tags = {
            type = "list",
            member = M.Tag,
        },
    },
}

M.GetWebIdentityTokenOutput = {
    type = "structure",
    id = "GetWebIdentityTokenOutput",
    members = {
        WebIdentityToken = {
            type = "string",
        },
        Expiration = {
            type = "timestamp",
        },
    },
}

M.JWTPayloadSizeExceededException = {
    type = "structure",
    id = "JWTPayloadSizeExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.OutboundWebIdentityFederationDisabledException = {
    type = "structure",
    id = "OutboundWebIdentityFederationDisabledException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.SessionDurationEscalationException = {
    type = "structure",
    id = "SessionDurationEscalationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

return M
