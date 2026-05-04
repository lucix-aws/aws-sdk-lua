local record CreateSavingsPlanInput
    savingsPlanOfferingId: string
    commitment: string
    upfrontPaymentAmount: string
    purchaseTime: number
    clientToken: string
    tags: {string : string}
end

local record CreateSavingsPlanOutput
    savingsPlanId: string
end

local record DeleteQueuedSavingsPlanInput
    savingsPlanId: string
end

local record DeleteQueuedSavingsPlanOutput
end

local record DescribeSavingsPlanRatesInput
    savingsPlanId: string
    filters: {SavingsPlanRateFilter}
    nextToken: string
    maxResults: number
end

local record DescribeSavingsPlanRatesOutput
    savingsPlanId: string
    searchResults: {SavingsPlanRate}
    nextToken: string
end

local record DescribeSavingsPlansInput
    savingsPlanArns: {string}
    savingsPlanIds: {string}
    nextToken: string
    maxResults: number
    states: {string}
    filters: {SavingsPlanFilter}
end

local record DescribeSavingsPlansOutput
    savingsPlans: {SavingsPlan}
    nextToken: string
end

local record DescribeSavingsPlansOfferingRatesInput
    savingsPlanOfferingIds: {string}
    savingsPlanPaymentOptions: {string}
    savingsPlanTypes: {string}
    products: {string}
    serviceCodes: {string}
    usageTypes: {string}
    operations: {string}
    filters: {SavingsPlanOfferingRateFilterElement}
    nextToken: string
    maxResults: number
end

local record DescribeSavingsPlansOfferingRatesOutput
    searchResults: {SavingsPlanOfferingRate}
    nextToken: string
end

local record DescribeSavingsPlansOfferingsInput
    offeringIds: {string}
    paymentOptions: {string}
    productType: string
    planTypes: {string}
    durations: {number}
    currencies: {string}
    descriptions: {string}
    serviceCodes: {string}
    usageTypes: {string}
    operations: {string}
    filters: {SavingsPlanOfferingFilterElement}
    nextToken: string
    maxResults: number
end

local record DescribeSavingsPlansOfferingsOutput
    searchResults: {SavingsPlanOffering}
    nextToken: string
end

local record ListTagsForResourceInput
    resourceArn: string
end

local record ListTagsForResourceOutput
    tags: {string : string}
end

local record ReturnSavingsPlanInput
    savingsPlanId: string
    clientToken: string
end

local record ReturnSavingsPlanOutput
    savingsPlanId: string
end

local record TagResourceInput
    resourceArn: string
    tags: {string : string}
end

local record TagResourceOutput
end

local record UntagResourceInput
    resourceArn: string
    tagKeys: {string}
end

local record UntagResourceOutput
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ServiceQuotaExceededException
    message: string
end

local record ValidationException
    message: string
end

local record InternalServerException
    message: string
end

local record ResourceNotFoundException
    message: string
end

local record ValidationException
    message: string
end

local type SavingsPlanProductType = "EC2" | "Fargate" | "Lambda" | "SageMaker" | "RDS" | "DSQL" | "DynamoDB" | "ElastiCache" | "DocDB" | "Neptune" | "Timestream" | "Keyspaces" | "DMS" | "OpenSearch"

local record M
    CreateSavingsPlanInput: CreateSavingsPlanInput
    CreateSavingsPlanOutput: CreateSavingsPlanOutput
    DeleteQueuedSavingsPlanInput: DeleteQueuedSavingsPlanInput
    DeleteQueuedSavingsPlanOutput: DeleteQueuedSavingsPlanOutput
    DescribeSavingsPlanRatesInput: DescribeSavingsPlanRatesInput
    DescribeSavingsPlanRatesOutput: DescribeSavingsPlanRatesOutput
    DescribeSavingsPlansInput: DescribeSavingsPlansInput
    DescribeSavingsPlansOutput: DescribeSavingsPlansOutput
    DescribeSavingsPlansOfferingRatesInput: DescribeSavingsPlansOfferingRatesInput
    DescribeSavingsPlansOfferingRatesOutput: DescribeSavingsPlansOfferingRatesOutput
    DescribeSavingsPlansOfferingsInput: DescribeSavingsPlansOfferingsInput
    DescribeSavingsPlansOfferingsOutput: DescribeSavingsPlansOfferingsOutput
    ListTagsForResourceInput: ListTagsForResourceInput
    ListTagsForResourceOutput: ListTagsForResourceOutput
    ReturnSavingsPlanInput: ReturnSavingsPlanInput
    ReturnSavingsPlanOutput: ReturnSavingsPlanOutput
    TagResourceInput: TagResourceInput
    TagResourceOutput: TagResourceOutput
    UntagResourceInput: UntagResourceInput
    UntagResourceOutput: UntagResourceOutput
end

return M
