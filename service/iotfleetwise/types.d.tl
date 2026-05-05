local record AssociateVehicleFleetInput
    vehicleName: string
    fleetId: string
end

local record AssociateVehicleFleetOutput
end

local record BatchCreateVehicleInput
    vehicles: {CreateVehicleRequestItem}
end

local record BatchCreateVehicleOutput
    vehicles: {CreateVehicleResponseItem}
    errors: {CreateVehicleError}
end

local record BatchUpdateVehicleInput
    vehicles: {UpdateVehicleRequestItem}
end

local record BatchUpdateVehicleOutput
    vehicles: {UpdateVehicleResponseItem}
    errors: {UpdateVehicleError}
end

local record CreateCampaignInput
    name: string
    description: string
    signalCatalogArn: string
    targetArn: string
    startTime: number
    expiryTime: number
    postTriggerCollectionDuration: number
    diagnosticsMode: string
    spoolingMode: string
    compression: string
    priority: number
    signalsToCollect: {SignalInformation}
    collectionScheme: CollectionScheme
    dataExtraDimensions: {string}
    tags: {Tag}
    dataDestinationConfigs: {DataDestinationConfig}
    dataPartitions: {DataPartition}
    signalsToFetch: {SignalFetchInformation}
end

local record CreateCampaignOutput
    name: string
    arn: string
end

local record CreateDecoderManifestInput
    name: string
    description: string
    modelManifestArn: string
    signalDecoders: {SignalDecoder}
    networkInterfaces: {NetworkInterface}
    defaultForUnmappedSignals: string
    tags: {Tag}
end

local record CreateDecoderManifestOutput
    name: string
    arn: string
end

local record CreateFleetInput
    fleetId: string
    description: string
    signalCatalogArn: string
    tags: {Tag}
end

local record CreateFleetOutput
    id: string
    arn: string
end

local record CreateModelManifestInput
    name: string
    description: string
    nodes: {string}
    signalCatalogArn: string
    tags: {Tag}
end

local record CreateModelManifestOutput
    name: string
    arn: string
end

local record CreateSignalCatalogInput
    name: string
    description: string
    nodes: {Node}
    tags: {Tag}
end

local record CreateSignalCatalogOutput
    name: string
    arn: string
end

local record CreateStateTemplateInput
    name: string
    description: string
    signalCatalogArn: string
    stateTemplateProperties: {string}
    dataExtraDimensions: {string}
    metadataExtraDimensions: {string}
    tags: {Tag}
end

local record CreateStateTemplateOutput
    name: string
    arn: string
    id: string
end

local record CreateVehicleInput
    vehicleName: string
    modelManifestArn: string
    decoderManifestArn: string
    attributes: {string : string}
    associationBehavior: string
    tags: {Tag}
    stateTemplates: {StateTemplateAssociation}
end

local record CreateVehicleOutput
    vehicleName: string
    arn: string
    thingArn: string
end

local record DeleteCampaignInput
    name: string
end

local record DeleteCampaignOutput
    name: string
    arn: string
end

local record DeleteDecoderManifestInput
    name: string
end

local record DeleteDecoderManifestOutput
    name: string
    arn: string
end

local record DeleteFleetInput
    fleetId: string
end

local record DeleteFleetOutput
    id: string
    arn: string
end

local record DeleteModelManifestInput
    name: string
end

local record DeleteModelManifestOutput
    name: string
    arn: string
end

local record DeleteSignalCatalogInput
    name: string
end

local record DeleteSignalCatalogOutput
    name: string
    arn: string
end

local record DeleteStateTemplateInput
    identifier: string
end

local record DeleteStateTemplateOutput
    name: string
    arn: string
    id: string
end

local record DeleteVehicleInput
    vehicleName: string
end

local record DeleteVehicleOutput
    vehicleName: string
    arn: string
end

local record DisassociateVehicleFleetInput
    vehicleName: string
    fleetId: string
end

local record DisassociateVehicleFleetOutput
end

local record GetCampaignInput
    name: string
end

local record GetCampaignOutput
    name: string
    arn: string
    description: string
    signalCatalogArn: string
    targetArn: string
    status: string
    startTime: number
    expiryTime: number
    postTriggerCollectionDuration: number
    diagnosticsMode: string
    spoolingMode: string
    compression: string
    priority: number
    signalsToCollect: {SignalInformation}
    collectionScheme: CollectionScheme
    dataExtraDimensions: {string}
    creationTime: number
    lastModificationTime: number
    dataDestinationConfigs: {DataDestinationConfig}
    dataPartitions: {DataPartition}
    signalsToFetch: {SignalFetchInformation}
end

local record GetDecoderManifestInput
    name: string
end

local record GetDecoderManifestOutput
    name: string
    arn: string
    description: string
    modelManifestArn: string
    status: string
    creationTime: number
    lastModificationTime: number
    message: string
end

local record GetEncryptionConfigurationInput
end

local record GetEncryptionConfigurationOutput
    kmsKeyId: string
    encryptionStatus: string
    encryptionType: string
    errorMessage: string
    creationTime: number
    lastModificationTime: number
end

local record GetFleetInput
    fleetId: string
end

local record GetFleetOutput
    id: string
    arn: string
    description: string
    signalCatalogArn: string
    creationTime: number
    lastModificationTime: number
end

local record GetLoggingOptionsInput
end

local record GetLoggingOptionsOutput
    cloudWatchLogDelivery: CloudWatchLogDeliveryOptions
end

local record GetModelManifestInput
    name: string
end

local record GetModelManifestOutput
    name: string
    arn: string
    description: string
    signalCatalogArn: string
    status: string
    creationTime: number
    lastModificationTime: number
end

local record GetRegisterAccountStatusInput
end

local record GetRegisterAccountStatusOutput
    customerAccountId: string
    accountStatus: string
    timestreamRegistrationResponse: TimestreamRegistrationResponse
    iamRegistrationResponse: IamRegistrationResponse
    creationTime: number
    lastModificationTime: number
end

local record GetSignalCatalogInput
    name: string
end

local record GetSignalCatalogOutput
    name: string
    arn: string
    description: string
    nodeCounts: NodeCounts
    creationTime: number
    lastModificationTime: number
end

local record GetStateTemplateInput
    identifier: string
end

local record GetStateTemplateOutput
    name: string
    arn: string
    description: string
    signalCatalogArn: string
    stateTemplateProperties: {string}
    dataExtraDimensions: {string}
    metadataExtraDimensions: {string}
    creationTime: number
    lastModificationTime: number
    id: string
end

local record GetVehicleInput
    vehicleName: string
end

local record GetVehicleOutput
    vehicleName: string
    arn: string
    modelManifestArn: string
    decoderManifestArn: string
    attributes: {string : string}
    stateTemplates: {StateTemplateAssociation}
    creationTime: number
    lastModificationTime: number
end

local record GetVehicleStatusInput
    nextToken: string
    maxResults: number
    vehicleName: string
end

local record GetVehicleStatusOutput
    campaigns: {VehicleStatus}
    nextToken: string
end

local record ImportDecoderManifestInput
    name: string
    networkFileDefinitions: {NetworkFileDefinition}
end

local record ImportDecoderManifestOutput
    name: string
    arn: string
end

local record ImportSignalCatalogInput
    name: string
    description: string
    vss: FormattedVss
    tags: {Tag}
end

local record ImportSignalCatalogOutput
    name: string
    arn: string
end

local record ListCampaignsInput
    nextToken: string
    maxResults: number
    status: string
    listResponseScope: string
end

local record ListCampaignsOutput
    campaignSummaries: {CampaignSummary}
    nextToken: string
end

local record ListDecoderManifestNetworkInterfacesInput
    name: string
    nextToken: string
    maxResults: number
end

local record ListDecoderManifestNetworkInterfacesOutput
    networkInterfaces: {NetworkInterface}
    nextToken: string
end

local record ListDecoderManifestsInput
    modelManifestArn: string
    nextToken: string
    maxResults: number
    listResponseScope: string
end

local record ListDecoderManifestsOutput
    summaries: {DecoderManifestSummary}
    nextToken: string
end

local record ListDecoderManifestSignalsInput
    name: string
    nextToken: string
    maxResults: number
end

local record ListDecoderManifestSignalsOutput
    signalDecoders: {SignalDecoder}
    nextToken: string
end

local record ListFleetsInput
    nextToken: string
    maxResults: number
    listResponseScope: string
end

local record ListFleetsOutput
    fleetSummaries: {FleetSummary}
    nextToken: string
end

local record ListFleetsForVehicleInput
    vehicleName: string
    nextToken: string
    maxResults: number
end

local record ListFleetsForVehicleOutput
    fleets: {string}
    nextToken: string
end

local record ListModelManifestNodesInput
    name: string
    nextToken: string
    maxResults: number
end

local record ListModelManifestNodesOutput
    nodes: {Node}
    nextToken: string
end

local record ListModelManifestsInput
    signalCatalogArn: string
    nextToken: string
    maxResults: number
    listResponseScope: string
end

local record ListModelManifestsOutput
    summaries: {ModelManifestSummary}
    nextToken: string
end

local record ListSignalCatalogNodesInput
    name: string
    nextToken: string
    maxResults: number
    signalNodeType: string
end

local record ListSignalCatalogNodesOutput
    nodes: {Node}
    nextToken: string
end

local record ListSignalCatalogsInput
    nextToken: string
    maxResults: number
end

local record ListSignalCatalogsOutput
    summaries: {SignalCatalogSummary}
    nextToken: string
end

local record ListStateTemplatesInput
    nextToken: string
    maxResults: number
    listResponseScope: string
end

local record ListStateTemplatesOutput
    summaries: {StateTemplateSummary}
    nextToken: string
end

local record ListTagsForResourceInput
    ResourceARN: string
end

local record ListTagsForResourceOutput
    Tags: {Tag}
end

local record ListVehiclesInput
    modelManifestArn: string
    attributeNames: {string}
    attributeValues: {string}
    nextToken: string
    maxResults: number
    listResponseScope: string
end

local record ListVehiclesOutput
    vehicleSummaries: {VehicleSummary}
    nextToken: string
end

local record ListVehiclesInFleetInput
    fleetId: string
    nextToken: string
    maxResults: number
end

local record ListVehiclesInFleetOutput
    vehicles: {string}
    nextToken: string
end

local record PutEncryptionConfigurationInput
    kmsKeyId: string
    encryptionType: string
end

local record PutEncryptionConfigurationOutput
    kmsKeyId: string
    encryptionStatus: string
    encryptionType: string
end

local record PutLoggingOptionsInput
    cloudWatchLogDelivery: CloudWatchLogDeliveryOptions
end

local record PutLoggingOptionsOutput
end

local record RegisterAccountInput
    timestreamResources: TimestreamResources
    iamResources: IamResources
end

local record RegisterAccountOutput
    registerAccountStatus: string
    timestreamResources: TimestreamResources
    iamResources: IamResources
    creationTime: number
    lastModificationTime: number
end

local record TagResourceInput
    ResourceARN: string
    Tags: {Tag}
end

local record TagResourceOutput
end

local record UntagResourceInput
    ResourceARN: string
    TagKeys: {string}
end

local record UntagResourceOutput
end

local record UpdateCampaignInput
    name: string
    description: string
    dataExtraDimensions: {string}
    action: string
end

local record UpdateCampaignOutput
    arn: string
    name: string
    status: string
end

local record UpdateDecoderManifestInput
    name: string
    description: string
    signalDecodersToAdd: {SignalDecoder}
    signalDecodersToUpdate: {SignalDecoder}
    signalDecodersToRemove: {string}
    networkInterfacesToAdd: {NetworkInterface}
    networkInterfacesToUpdate: {NetworkInterface}
    networkInterfacesToRemove: {string}
    status: string
    defaultForUnmappedSignals: string
end

local record UpdateDecoderManifestOutput
    name: string
    arn: string
end

local record UpdateFleetInput
    fleetId: string
    description: string
end

local record UpdateFleetOutput
    id: string
    arn: string
end

local record UpdateModelManifestInput
    name: string
    description: string
    nodesToAdd: {string}
    nodesToRemove: {string}
    status: string
end

local record UpdateModelManifestOutput
    name: string
    arn: string
end

local record UpdateSignalCatalogInput
    name: string
    description: string
    nodesToAdd: {Node}
    nodesToUpdate: {Node}
    nodesToRemove: {string}
end

local record UpdateSignalCatalogOutput
    name: string
    arn: string
end

local record UpdateStateTemplateInput
    identifier: string
    description: string
    stateTemplatePropertiesToAdd: {string}
    stateTemplatePropertiesToRemove: {string}
    dataExtraDimensions: {string}
    metadataExtraDimensions: {string}
end

local record UpdateStateTemplateOutput
    name: string
    arn: string
    id: string
end

local record UpdateVehicleInput
    vehicleName: string
    modelManifestArn: string
    decoderManifestArn: string
    attributes: {string : string}
    attributeUpdateMode: string
    stateTemplatesToAdd: {StateTemplateAssociation}
    stateTemplatesToRemove: {string}
    stateTemplatesToUpdate: {StateTemplateAssociation}
end

local record UpdateVehicleOutput
    vehicleName: string
    arn: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record LimitExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record LimitExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record LimitExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record LimitExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record DecoderManifestValidationException
    invalidSignals: {InvalidSignalDecoder}
    invalidNetworkInterfaces: {InvalidNetworkInterface}
    message: string
end

local record LimitExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record LimitExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record InvalidSignalsException
    message: string
    invalidSignals: {InvalidSignal}
end

local record LimitExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record InvalidNodeException
    invalidNodes: {Node}
    reason: string
    message: string
end

local record InvalidSignalsException
    message: string
    invalidSignals: {InvalidSignal}
end

local record LimitExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record InvalidSignalsException
    message: string
    invalidSignals: {InvalidSignal}
end

local record LimitExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record LimitExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record DecoderManifestValidationException
    invalidSignals: {InvalidSignalDecoder}
    invalidNetworkInterfaces: {InvalidNetworkInterface}
    message: string
end

local record InvalidSignalsException
    message: string
    invalidSignals: {InvalidSignal}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record InvalidSignalsException
    message: string
    invalidSignals: {InvalidSignal}
end

local record LimitExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record LimitExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record LimitExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record DecoderManifestValidationException
    invalidSignals: {InvalidSignalDecoder}
    invalidNetworkInterfaces: {InvalidNetworkInterface}
    message: string
end

local record LimitExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record InvalidSignalsException
    message: string
    invalidSignals: {InvalidSignal}
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record InvalidNodeException
    invalidNodes: {Node}
    reason: string
    message: string
end

local record InvalidSignalsException
    message: string
    invalidSignals: {InvalidSignal}
end

local record LimitExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record InvalidSignalsException
    message: string
    invalidSignals: {InvalidSignal}
end

local record LimitExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record AccessDeniedException
    message: string
end

local record ConflictException
    message: string
    resource: string
    resourceType: string
end

local record InternalServerException
    message: string
    retryAfterSeconds: number
end

local record LimitExceededException
    message: string
    resourceId: string
    resourceType: string
end

local record ResourceNotFoundException
    message: string
    resourceId: string
    resourceType: string
end

local record ThrottlingException
    message: string
    quotaCode: string
    serviceCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local type ListResponseScope = "METADATA_ONLY"

local type VehicleAssociationBehavior = "CreateIotThing" | "ValidateIotThingExists"

local type UpdateMode = "Overwrite" | "Merge"

local type SpoolingMode = "OFF" | "TO_DISK"

local type DefaultForUnmappedSignalsType = "CUSTOM_DECODING"

local type Compression = "OFF" | "SNAPPY"

local type UpdateCampaignAction = "APPROVE" | "SUSPEND" | "RESUME" | "UPDATE"

local type EncryptionType = "KMS_BASED_ENCRYPTION" | "FLEETWISE_DEFAULT_ENCRYPTION"

local type EncryptionStatus = "PENDING" | "SUCCESS" | "FAILURE"

local type SignalNodeType = "SENSOR" | "ACTUATOR" | "ATTRIBUTE" | "BRANCH" | "CUSTOM_STRUCT" | "CUSTOM_PROPERTY"

local type ManifestStatus = "ACTIVE" | "DRAFT" | "INVALID" | "VALIDATING"

local type DiagnosticsMode = "OFF" | "SEND_ACTIVE_DTCS"

local type RegistrationStatus = "REGISTRATION_PENDING" | "REGISTRATION_SUCCESS" | "REGISTRATION_FAILURE"

local type CampaignStatus = "CREATING" | "WAITING_FOR_APPROVAL" | "RUNNING" | "SUSPENDED"

local record M
    AssociateVehicleFleetInput: AssociateVehicleFleetInput
    AssociateVehicleFleetOutput: AssociateVehicleFleetOutput
    BatchCreateVehicleInput: BatchCreateVehicleInput
    BatchCreateVehicleOutput: BatchCreateVehicleOutput
    BatchUpdateVehicleInput: BatchUpdateVehicleInput
    BatchUpdateVehicleOutput: BatchUpdateVehicleOutput
    CreateCampaignInput: CreateCampaignInput
    CreateCampaignOutput: CreateCampaignOutput
    CreateDecoderManifestInput: CreateDecoderManifestInput
    CreateDecoderManifestOutput: CreateDecoderManifestOutput
    CreateFleetInput: CreateFleetInput
    CreateFleetOutput: CreateFleetOutput
    CreateModelManifestInput: CreateModelManifestInput
    CreateModelManifestOutput: CreateModelManifestOutput
    CreateSignalCatalogInput: CreateSignalCatalogInput
    CreateSignalCatalogOutput: CreateSignalCatalogOutput
    CreateStateTemplateInput: CreateStateTemplateInput
    CreateStateTemplateOutput: CreateStateTemplateOutput
    CreateVehicleInput: CreateVehicleInput
    CreateVehicleOutput: CreateVehicleOutput
    DeleteCampaignInput: DeleteCampaignInput
    DeleteCampaignOutput: DeleteCampaignOutput
    DeleteDecoderManifestInput: DeleteDecoderManifestInput
    DeleteDecoderManifestOutput: DeleteDecoderManifestOutput
    DeleteFleetInput: DeleteFleetInput
    DeleteFleetOutput: DeleteFleetOutput
    DeleteModelManifestInput: DeleteModelManifestInput
    DeleteModelManifestOutput: DeleteModelManifestOutput
    DeleteSignalCatalogInput: DeleteSignalCatalogInput
    DeleteSignalCatalogOutput: DeleteSignalCatalogOutput
    DeleteStateTemplateInput: DeleteStateTemplateInput
    DeleteStateTemplateOutput: DeleteStateTemplateOutput
    DeleteVehicleInput: DeleteVehicleInput
    DeleteVehicleOutput: DeleteVehicleOutput
    DisassociateVehicleFleetInput: DisassociateVehicleFleetInput
    DisassociateVehicleFleetOutput: DisassociateVehicleFleetOutput
    GetCampaignInput: GetCampaignInput
    GetCampaignOutput: GetCampaignOutput
    GetDecoderManifestInput: GetDecoderManifestInput
    GetDecoderManifestOutput: GetDecoderManifestOutput
    GetEncryptionConfigurationInput: GetEncryptionConfigurationInput
    GetEncryptionConfigurationOutput: GetEncryptionConfigurationOutput
    GetFleetInput: GetFleetInput
    GetFleetOutput: GetFleetOutput
    GetLoggingOptionsInput: GetLoggingOptionsInput
    GetLoggingOptionsOutput: GetLoggingOptionsOutput
    GetModelManifestInput: GetModelManifestInput
    GetModelManifestOutput: GetModelManifestOutput
    GetRegisterAccountStatusInput: GetRegisterAccountStatusInput
    GetRegisterAccountStatusOutput: GetRegisterAccountStatusOutput
    GetSignalCatalogInput: GetSignalCatalogInput
    GetSignalCatalogOutput: GetSignalCatalogOutput
    GetStateTemplateInput: GetStateTemplateInput
    GetStateTemplateOutput: GetStateTemplateOutput
    GetVehicleInput: GetVehicleInput
    GetVehicleOutput: GetVehicleOutput
    GetVehicleStatusInput: GetVehicleStatusInput
    GetVehicleStatusOutput: GetVehicleStatusOutput
    ImportDecoderManifestInput: ImportDecoderManifestInput
    ImportDecoderManifestOutput: ImportDecoderManifestOutput
    ImportSignalCatalogInput: ImportSignalCatalogInput
    ImportSignalCatalogOutput: ImportSignalCatalogOutput
    ListCampaignsInput: ListCampaignsInput
    ListCampaignsOutput: ListCampaignsOutput
    ListDecoderManifestNetworkInterfacesInput: ListDecoderManifestNetworkInterfacesInput
    ListDecoderManifestNetworkInterfacesOutput: ListDecoderManifestNetworkInterfacesOutput
    ListDecoderManifestsInput: ListDecoderManifestsInput
    ListDecoderManifestsOutput: ListDecoderManifestsOutput
    ListDecoderManifestSignalsInput: ListDecoderManifestSignalsInput
    ListDecoderManifestSignalsOutput: ListDecoderManifestSignalsOutput
    ListFleetsInput: ListFleetsInput
    ListFleetsOutput: ListFleetsOutput
    ListFleetsForVehicleInput: ListFleetsForVehicleInput
    ListFleetsForVehicleOutput: ListFleetsForVehicleOutput
    ListModelManifestNodesInput: ListModelManifestNodesInput
    ListModelManifestNodesOutput: ListModelManifestNodesOutput
    ListModelManifestsInput: ListModelManifestsInput
    ListModelManifestsOutput: ListModelManifestsOutput
    ListSignalCatalogNodesInput: ListSignalCatalogNodesInput
    ListSignalCatalogNodesOutput: ListSignalCatalogNodesOutput
    ListSignalCatalogsInput: ListSignalCatalogsInput
    ListSignalCatalogsOutput: ListSignalCatalogsOutput
    ListStateTemplatesInput: ListStateTemplatesInput
    ListStateTemplatesOutput: ListStateTemplatesOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ListVehiclesInput: ListVehiclesInput
    ListVehiclesOutput: ListVehiclesOutput
    ListVehiclesInFleetInput: ListVehiclesInFleetInput
    ListVehiclesInFleetOutput: ListVehiclesInFleetOutput
    PutEncryptionConfigurationInput: PutEncryptionConfigurationInput
    PutEncryptionConfigurationOutput: PutEncryptionConfigurationOutput
    PutLoggingOptionsInput: PutLoggingOptionsInput
    PutLoggingOptionsOutput: PutLoggingOptionsOutput
    RegisterAccountInput: RegisterAccountInput
    RegisterAccountOutput: RegisterAccountOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
    UpdateCampaignInput: UpdateCampaignInput
    UpdateCampaignOutput: UpdateCampaignOutput
    UpdateDecoderManifestInput: UpdateDecoderManifestInput
    UpdateDecoderManifestOutput: UpdateDecoderManifestOutput
    UpdateFleetInput: UpdateFleetInput
    UpdateFleetOutput: UpdateFleetOutput
    UpdateModelManifestInput: UpdateModelManifestInput
    UpdateModelManifestOutput: UpdateModelManifestOutput
    UpdateSignalCatalogInput: UpdateSignalCatalogInput
    UpdateSignalCatalogOutput: UpdateSignalCatalogOutput
    UpdateStateTemplateInput: UpdateStateTemplateInput
    UpdateStateTemplateOutput: UpdateStateTemplateOutput
    UpdateVehicleInput: UpdateVehicleInput
    UpdateVehicleOutput: UpdateVehicleOutput
end

return M
