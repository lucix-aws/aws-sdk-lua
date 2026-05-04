local record BatchGetTokenBalanceInput
    getTokenBalanceInputs: {BatchGetTokenBalanceInputItem}
end

local record BatchGetTokenBalanceOutput
    tokenBalances: {BatchGetTokenBalanceOutputItem}
    errors: {BatchGetTokenBalanceErrorItem}
end

local record GetAssetContractInput
    contractIdentifier: ContractIdentifier
end

local record GetAssetContractOutput
    contractIdentifier: ContractIdentifier
    tokenStandard: string
    deployerAddress: string
    metadata: ContractMetadata
end

local record GetTokenBalanceInput
    tokenIdentifier: TokenIdentifier
    ownerIdentifier: OwnerIdentifier
    atBlockchainInstant: BlockchainInstant
end

local record GetTokenBalanceOutput
    ownerIdentifier: OwnerIdentifier
    tokenIdentifier: TokenIdentifier
    balance: string
    atBlockchainInstant: BlockchainInstant
    lastUpdatedTime: BlockchainInstant
end

local record GetTransactionInput
    transactionHash: string
    transactionId: string
    network: string
end

local record GetTransactionOutput
    transaction: Transaction
end

local record ListAssetContractsInput
    contractFilter: ContractFilter
    nextToken: string
    maxResults: number
end

local record ListAssetContractsOutput
    contracts: {AssetContract}
    nextToken: string
end

local record ListFilteredTransactionEventsInput
    network: string
    addressIdentifierFilter: AddressIdentifierFilter
    timeFilter: TimeFilter
    voutFilter: VoutFilter
    confirmationStatusFilter: ConfirmationStatusFilter
    sort: ListFilteredTransactionEventsSort
    nextToken: string
    maxResults: number
end

local record ListFilteredTransactionEventsOutput
    events: {TransactionEvent}
    nextToken: string
end

local record ListTokenBalancesInput
    ownerFilter: OwnerFilter
    tokenFilter: TokenFilter
    nextToken: string
    maxResults: number
end

local record ListTokenBalancesOutput
    tokenBalances: {TokenBalance}
    nextToken: string
end

local record ListTransactionEventsInput
    transactionHash: string
    transactionId: string
    network: string
    nextToken: string
    maxResults: number
end

local record ListTransactionEventsOutput
    events: {TransactionEvent}
    nextToken: string
end

local record ListTransactionsInput
    address: string
    network: string
    fromBlockchainInstant: BlockchainInstant
    toBlockchainInstant: BlockchainInstant
    sort: ListTransactionsSort
    nextToken: string
    maxResults: number
    confirmationStatusFilter: ConfirmationStatusFilter
end

local record ListTransactionsOutput
    transactions: {TransactionOutputItem}
    nextToken: string
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

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
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

local record ServiceQuotaExceededException
    message: string
    resourceId: string
    resourceType: string
    serviceCode: string
    quotaCode: string
end

local record ThrottlingException
    message: string
    serviceCode: string
    quotaCode: string
    retryAfterSeconds: number
end

local record ValidationException
    message: string
    reason: string
    fieldList: {ValidationExceptionField}
end

local record M
    BatchGetTokenBalanceInput: BatchGetTokenBalanceInput
    BatchGetTokenBalanceOutput: BatchGetTokenBalanceOutput
    GetAssetContractInput: GetAssetContractInput
    GetAssetContractOutput: GetAssetContractOutput
    GetTokenBalanceInput: GetTokenBalanceInput
    GetTokenBalanceOutput: GetTokenBalanceOutput
    GetTransactionInput: GetTransactionInput
    GetTransactionOutput: GetTransactionOutput
    ListAssetContractsInput: ListAssetContractsInput
    ListAssetContractsOutput: ListAssetContractsOutput
    ListFilteredTransactionEventsInput: ListFilteredTransactionEventsInput
    ListFilteredTransactionEventsOutput: ListFilteredTransactionEventsOutput
    ListTokenBalancesInput: ListTokenBalancesInput
    ListTokenBalancesOutput: ListTokenBalancesOutput
    ListTransactionEventsInput: ListTransactionEventsInput
    ListTransactionEventsOutput: ListTransactionEventsOutput
    ListTransactionsInput: ListTransactionsInput
    ListTransactionsOutput: ListTransactionsOutput
end

return M
