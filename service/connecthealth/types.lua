local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ActivateSubscriptionInput = {
    type = "structure",
    id = "ActivateSubscriptionInput",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.SubscriptionStatus = {
    ACTIVE = "ACTIVE",
    INACTIVE = "INACTIVE",
    DELETED = "DELETED",
}

M.SubscriptionDescription = {
    type = "structure",
    id = "SubscriptionDescription",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        activatedAt = {
            type = "timestamp",
        },
        deactivatedAt = {
            type = "timestamp",
        },
    },
}

M.ActivateSubscriptionOutput = {
    type = "structure",
    id = "ActivateSubscriptionOutput",
    members = {
        subscription = M.SubscriptionDescription,
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ResourceNotFoundException = {
    type = "structure",
    id = "ResourceNotFoundException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.ValidationException = {
    type = "structure",
    id = "ValidationException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.PostStreamArtifactGenerationStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.ArtifactDetails = {
    type = "structure",
    id = "ArtifactDetails",
    members = {
        outputLocation = {
            type = "string",
        },
        status = {
            type = "string",
        },
        failureReason = {
            type = "string",
        },
    },
}

M.ClinicalNoteGenerationResult = {
    type = "structure",
    id = "ClinicalNoteGenerationResult",
    members = {
        noteResult = M.ArtifactDetails,
        transcriptResult = M.ArtifactDetails,
        afterVisitSummaryResult = M.ArtifactDetails,
    },
}

M.TemplateSectionInstruction = {
    type = "structure",
    id = "TemplateSectionInstruction",
    members = {
        sectionHeader = {
            type = "string",
            traits = {
                required = true,
            },
        },
        sectionInstruction = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CustomTemplateBase = {
    HISTORY_AND_PHYSICAL = "HISTORY_AND_PHYSICAL",
    GIRPP = "GIRPP",
    DAP = "DAP",
    SIRP = "SIRP",
    BIRP = "BIRP",
    BEHAVIORAL_SOAP = "BEHAVIORAL_SOAP",
}

M.CustomTemplate = {
    type = "structure",
    id = "CustomTemplate",
    members = {
        templateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        templateInstructions = {
            type = "list",
            member = M.TemplateSectionInstruction,
            traits = {
                required = true,
            },
        },
    },
}

M.ManagedNoteTemplate = {
    HISTORY_AND_PHYSICAL = "HISTORY_AND_PHYSICAL",
    GIRPP = "GIRPP",
    DAP = "DAP",
    SIRP = "SIRP",
    BIRP = "BIRP",
    BEHAVIORAL_SOAP = "BEHAVIORAL_SOAP",
    PHYSICAL_SOAP = "PHYSICAL_SOAP",
}

M.ManagedTemplate = {
    type = "structure",
    id = "ManagedTemplate",
    members = {
        templateType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.NoteTemplateSettings = {
    type = "union",
    id = "NoteTemplateSettings",
    members = {
        managedTemplate = M.ManagedTemplate,
        customTemplate = M.CustomTemplate,
    },
}

M.ClinicalNoteGenerationSettings = {
    type = "structure",
    id = "ClinicalNoteGenerationSettings",
    members = {
        noteTemplateSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.NoteTemplateSettings }),
    },
}

M.CustomTemplateResponse = {
    type = "structure",
    id = "CustomTemplateResponse",
    members = {
        templateType = {
            type = "string",
        },
    },
}

M.ManagedTemplateResponse = {
    type = "structure",
    id = "ManagedTemplateResponse",
    members = {
        templateType = {
            type = "string",
        },
    },
}

M.NoteTemplateSettingsResponse = {
    type = "union",
    id = "NoteTemplateSettingsResponse",
    members = {
        managedTemplate = M.ManagedTemplateResponse,
        customTemplate = M.CustomTemplateResponse,
    },
}

M.ClinicalNoteGenerationSettingsResponse = {
    type = "structure",
    id = "ClinicalNoteGenerationSettingsResponse",
    members = {
        noteTemplateSettings = M.NoteTemplateSettingsResponse,
    },
}

M.ConflictException = {
    type = "structure",
    id = "ConflictException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateWebAppConfiguration = {
    type = "structure",
    id = "CreateWebAppConfiguration",
    members = {
        ehrRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idcInstanceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idcRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDomainInput = {
    type = "structure",
    id = "CreateDomainInput",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
        webAppSetupConfiguration = M.CreateWebAppConfiguration,
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.EncryptionType = {
    AWS_OWNED_KEY = "AWS_OWNED_KEY",
    CUSTOMER_MANAGED_KEY = "CUSTOMER_MANAGED_KEY",
}

M.EncryptionContext = {
    type = "structure",
    id = "EncryptionContext",
    members = {
        encryptionType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        kmsKeyArn = {
            type = "string",
        },
    },
}

M.DomainStatus = {
    ACTIVE = "ACTIVE",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.WebAppConfiguration = {
    type = "structure",
    id = "WebAppConfiguration",
    members = {
        ehrRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idcApplicationId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        idcRegion = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.CreateDomainOutput = {
    type = "structure",
    id = "CreateDomainOutput",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
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
        kmsKeyArn = {
            type = "string",
        },
        encryptionContext = M.EncryptionContext,
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        webAppUrl = {
            type = "string",
        },
        webAppConfiguration = M.WebAppConfiguration,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    id = "ServiceQuotaExceededException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.CreateSubscriptionInput = {
    type = "structure",
    id = "CreateSubscriptionInput",
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

M.CreateSubscriptionOutput = {
    type = "structure",
    id = "CreateSubscriptionOutput",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        lastUpdatedAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        activatedAt = {
            type = "timestamp",
        },
        deactivatedAt = {
            type = "timestamp",
        },
    },
}

M.DeactivateSubscriptionInput = {
    type = "structure",
    id = "DeactivateSubscriptionInput",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.DeactivateSubscriptionOutput = {
    type = "structure",
    id = "DeactivateSubscriptionOutput",
    members = {
        subscription = M.SubscriptionDescription,
    },
}

M.DeleteDomainInput = {
    type = "structure",
    id = "DeleteDomainInput",
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
    id = "DeleteDomainOutput",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
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
    },
}

M.GetDomainInput = {
    type = "structure",
    id = "GetDomainInput",
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
    id = "GetDomainOutput",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
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
        kmsKeyArn = {
            type = "string",
        },
        encryptionContext = M.EncryptionContext,
        status = {
            type = "string",
            traits = {
                required = true,
            },
        },
        webAppUrl = {
            type = "string",
        },
        webAppConfiguration = M.WebAppConfiguration,
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.GetMedicalScribeListeningSessionInput = {
    type = "structure",
    id = "GetMedicalScribeListeningSessionInput",
    members = {
        sessionId = {
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
        subscriptionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.MedicalScribeParticipantRole = {
    PATIENT = "PATIENT",
    CLINICIAN = "CLINICIAN",
}

M.MedicalScribeChannelDefinition = {
    type = "structure",
    id = "MedicalScribeChannelDefinition",
    members = {
        channelId = {
            type = "integer",
            traits = {
                required = true,
            },
        },
        participantRole = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.MedicalScribeLanguageCode = {
    EN_US = "en-US",
}

M.MedicalScribeMediaEncoding = {
    PCM = "pcm",
    FLAC = "flac",
}

M.MedicalScribePostStreamActionsResult = {
    type = "structure",
    id = "MedicalScribePostStreamActionsResult",
    members = {
        clinicalNoteGenerationResult = M.ClinicalNoteGenerationResult,
    },
}

M.MedicalScribePostStreamActionSettingsResponse = {
    type = "structure",
    id = "MedicalScribePostStreamActionSettingsResponse",
    members = {
        outputS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clinicalNoteGenerationSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClinicalNoteGenerationSettingsResponse }),
    },
}

M.MedicalScribeStreamStatus = {
    IN_PROGRESS = "IN_PROGRESS",
    PAUSED = "PAUSED",
    FAILED = "FAILED",
    COMPLETED = "COMPLETED",
}

M.MedicalScribeListeningSessionDetails = {
    type = "structure",
    id = "MedicalScribeListeningSessionDetails",
    members = {
        sessionId = {
            type = "string",
        },
        domainId = {
            type = "string",
        },
        subscriptionId = {
            type = "string",
        },
        languageCode = {
            type = "string",
        },
        mediaSampleRateHertz = {
            type = "integer",
        },
        mediaEncoding = {
            type = "string",
        },
        channelDefinitions = {
            type = "list",
            member = M.MedicalScribeChannelDefinition,
        },
        postStreamActionSettings = M.MedicalScribePostStreamActionSettingsResponse,
        postStreamActionResult = M.MedicalScribePostStreamActionsResult,
        encounterContextProvided = {
            type = "boolean",
        },
        streamStatus = {
            type = "string",
        },
        streamCreationTime = {
            type = "timestamp",
        },
        streamEndTime = {
            type = "timestamp",
        },
    },
}

M.GetMedicalScribeListeningSessionOutput = {
    type = "structure",
    id = "GetMedicalScribeListeningSessionOutput",
    members = {
        medicalScribeListeningSessionDetails = M.MedicalScribeListeningSessionDetails,
    },
}

M.ThrottlingException = {
    type = "structure",
    id = "ThrottlingException",
    error = "client",
    members = {
        message = {
            type = "string",
        },
    },
}

M.GetPatientInsightsJobInput = {
    type = "structure",
    id = "GetPatientInsightsJobInput",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.PatientInsightsEncounterContext = {
    type = "structure",
    id = "PatientInsightsEncounterContext",
    members = {
        encounterReason = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.FHIRServer = {
    type = "structure",
    id = "FHIRServer",
    members = {
        fhirEndpoint = {
            type = "string",
            traits = {
                required = true,
            },
        },
        oauthToken = {
            type = "string",
        },
    },
}

M.S3Source = {
    type = "structure",
    id = "S3Source",
    members = {
        uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InputDataConfig = {
    type = "structure",
    id = "InputDataConfig",
    members = {
        fhirServer = M.FHIRServer,
        s3Sources = {
            type = "list",
            member = M.S3Source,
        },
    },
}

M.InsightsType = {
    PRE_VISIT = "PRE_VISIT",
}

M.InsightsContext = {
    type = "structure",
    id = "InsightsContext",
    members = {
        insightsType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.InsightsOutput = {
    type = "structure",
    id = "InsightsOutput",
    members = {
        uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.JobStatus = {
    SUBMITTED = "SUBMITTED",
    IN_PROGRESS = "IN_PROGRESS",
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.OutputDataConfig = {
    type = "structure",
    id = "OutputDataConfig",
    members = {
        s3OutputPath = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Pronouns = {
    HE_HIM = "HE_HIM",
    SHE_HER = "SHE_HER",
    THEY_THEM = "THEY_THEM",
}

M.PatientInsightsPatientContext = {
    type = "structure",
    id = "PatientInsightsPatientContext",
    members = {
        patientId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        dateOfBirth = {
            type = "string",
        },
        pronouns = {
            type = "string",
        },
    },
}

M.ProviderRole = {
    CLINICIAN = "CLINICIAN",
}

M.Specialty = {
    PRIMARY_CARE = "PRIMARY_CARE",
}

M.UserContext = {
    type = "structure",
    id = "UserContext",
    members = {
        role = {
            type = "string",
            traits = {
                required = true,
            },
        },
        userId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        specialty = {
            type = "string",
        },
    },
}

M.GetPatientInsightsJobOutput = {
    type = "structure",
    id = "GetPatientInsightsJobOutput",
    members = {
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobStatus = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        updatedTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
        insightsOutput = M.InsightsOutput,
        statusDetails = {
            type = "string",
        },
        patientContext = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PatientInsightsPatientContext }),
        insightsContext = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InsightsContext }),
        encounterContext = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PatientInsightsEncounterContext }),
        userContext = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserContext }),
        inputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        outputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
    },
}

M.GetSubscriptionInput = {
    type = "structure",
    id = "GetSubscriptionInput",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
    },
}

M.GetSubscriptionOutput = {
    type = "structure",
    id = "GetSubscriptionOutput",
    members = {
        subscription = M.SubscriptionDescription,
    },
}

M.ListDomainsInput = {
    type = "structure",
    id = "ListDomainsInput",
    members = {
        status = {
            type = "string",
            traits = {
                http_query = "status",
            },
        },
        maxResults = {
            type = "integer",
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
    id = "DomainSummary",
    members = {
        domainId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        arn = {
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
        createdAt = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
    },
}

M.ListDomainsOutput = {
    type = "structure",
    id = "ListDomainsOutput",
    members = {
        domains = {
            type = "list",
            member = M.DomainSummary,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListSubscriptionsInput = {
    type = "structure",
    id = "ListSubscriptionsInput",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        maxResults = {
            type = "integer",
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

M.ListSubscriptionsOutput = {
    type = "structure",
    id = "ListSubscriptionsOutput",
    members = {
        subscriptions = {
            type = "list",
            member = M.SubscriptionDescription,
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTagsForResourceInput = {
    type = "structure",
    id = "ListTagsForResourceInput",
    members = {
        resourceArn = {
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
    id = "ListTagsForResourceOutput",
    members = {
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
        },
    },
}

M.MedicalScribeAudioEvent = {
    type = "structure",
    id = "MedicalScribeAudioEvent",
    members = {
        audioChunk = {
            type = "blob",
            traits = {
                required = true,
            },
        },
    },
}

M.EncounterContext = {
    type = "structure",
    id = "EncounterContext",
    members = {
        unstructuredContext = {
            type = "string",
        },
    },
}

M.MedicalScribePostStreamActionSettings = {
    type = "structure",
    id = "MedicalScribePostStreamActionSettings",
    members = {
        outputS3Uri = {
            type = "string",
            traits = {
                required = true,
            },
        },
        clinicalNoteGenerationSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ClinicalNoteGenerationSettings }),
    },
}

M.MedicalScribeConfigurationEvent = {
    type = "structure",
    id = "MedicalScribeConfigurationEvent",
    members = {
        postStreamActionSettings = setmetatable({ traits = {
            required = true,
        } }, { __index = M.MedicalScribePostStreamActionSettings }),
        channelDefinitions = {
            type = "list",
            member = M.MedicalScribeChannelDefinition,
        },
        encounterContext = M.EncounterContext,
    },
}

M.MedicalScribeSessionControlEventType = {
    END_OF_SESSION = "END_OF_SESSION",
}

M.MedicalScribeSessionControlEvent = {
    type = "structure",
    id = "MedicalScribeSessionControlEvent",
    members = {
        type = {
            type = "string",
        },
    },
}

M.MedicalScribeInputStream = {
    type = "union",
    id = "MedicalScribeInputStream",
    members = {
        audioEvent = M.MedicalScribeAudioEvent,
        sessionControlEvent = M.MedicalScribeSessionControlEvent,
        configurationEvent = M.MedicalScribeConfigurationEvent,
    },
}

M.StartMedicalScribeListeningSessionInput = {
    type = "structure",
    id = "StartMedicalScribeListeningSessionInput",
    members = {
        sessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-session-id",
                required = true,
            },
        },
        domainId = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-domain-id",
                required = true,
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-subscription-id",
                required = true,
            },
        },
        languageCode = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-language-code",
                required = true,
            },
        },
        mediaSampleRateHertz = {
            type = "integer",
            traits = {
                http_header = "x-amzn-medscribe-sample-rate",
                required = true,
            },
        },
        mediaEncoding = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-media-encoding",
                required = true,
            },
        },
        inputStream = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.MedicalScribeInputStream }),
    },
}

M.MedicalScribeTranscriptSegment = {
    type = "structure",
    id = "MedicalScribeTranscriptSegment",
    members = {
        segmentId = {
            type = "string",
        },
        audioBeginOffset = {
            type = "double",
        },
        audioEndOffset = {
            type = "double",
        },
        isPartial = {
            type = "boolean",
        },
        channelId = {
            type = "string",
        },
        content = {
            type = "string",
        },
    },
}

M.MedicalScribeTranscriptEvent = {
    type = "structure",
    id = "MedicalScribeTranscriptEvent",
    members = {
        transcriptSegment = M.MedicalScribeTranscriptSegment,
    },
}

M.MedicalScribeOutputStream = {
    type = "union",
    id = "MedicalScribeOutputStream",
    members = {
        transcriptEvent = M.MedicalScribeTranscriptEvent,
        internalFailureException = M.InternalServerException,
        validationException = M.ValidationException,
    },
}

M.StartMedicalScribeListeningSessionOutput = {
    type = "structure",
    id = "StartMedicalScribeListeningSessionOutput",
    members = {
        sessionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-session-id",
            },
        },
        domainId = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-domain-id",
            },
        },
        subscriptionId = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-subscription-id",
            },
        },
        requestId = {
            type = "string",
            traits = {
                http_header = "x-amzn-request-id",
            },
        },
        languageCode = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-language-code",
            },
        },
        mediaSampleRateHertz = {
            type = "integer",
            traits = {
                http_header = "x-amzn-medscribe-sample-rate",
            },
        },
        mediaEncoding = {
            type = "string",
            traits = {
                http_header = "x-amzn-medscribe-media-encoding",
            },
        },
        responseStream = setmetatable({ traits = {
            http_payload = true,
        } }, { __index = M.MedicalScribeOutputStream }),
    },
}

M.StartPatientInsightsJobInput = {
    type = "structure",
    id = "StartPatientInsightsJobInput",
    members = {
        domainId = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        patientContext = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PatientInsightsPatientContext }),
        insightsContext = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InsightsContext }),
        encounterContext = setmetatable({ traits = {
            required = true,
        } }, { __index = M.PatientInsightsEncounterContext }),
        userContext = setmetatable({ traits = {
            required = true,
        } }, { __index = M.UserContext }),
        inputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.InputDataConfig }),
        outputDataConfig = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OutputDataConfig }),
        clientToken = {
            type = "string",
            traits = {
                idempotency_token = true,
            },
        },
    },
}

M.StartPatientInsightsJobOutput = {
    type = "structure",
    id = "StartPatientInsightsJobOutput",
    members = {
        jobArn = {
            type = "string",
            traits = {
                required = true,
            },
        },
        jobId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        creationTime = {
            type = "timestamp",
            traits = {
                timestamp_format = "date-time",
            },
        },
    },
}

M.TagResourceInput = {
    type = "structure",
    id = "TagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tags = {
            type = "map",
            key = { type = "string" },
            value = { type = "string" },
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

M.UntagResourceInput = {
    type = "structure",
    id = "UntagResourceInput",
    members = {
        resourceArn = {
            type = "string",
            traits = {
                http_label = true,
                required = true,
            },
        },
        tagKeys = {
            type = "list",
            member = { type = "string" },
            traits = {
                http_query = "tagKeys",
                required = true,
            },
        },
    },
}

M.UntagResourceOutput = {
    type = "structure",
    id = "UntagResourceOutput",
}

return M
