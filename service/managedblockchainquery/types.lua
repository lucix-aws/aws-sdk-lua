local M = {}

M.AccessDeniedException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.AddressIdentifierFilter = {
    type = "structure",
    members = {
        transactionEventToAddress = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QueryNetwork = {
    ETHEREUM_MAINNET = "ETHEREUM_MAINNET",
    ETHEREUM_SEPOLIA_TESTNET = "ETHEREUM_SEPOLIA_TESTNET",
    BITCOIN_MAINNET = "BITCOIN_MAINNET",
    BITCOIN_TESTNET = "BITCOIN_TESTNET",
}

M.ContractIdentifier = {
    type = "structure",
    members = {
        network = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contractAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.QueryTokenStandard = {
    ERC20 = "ERC20",
    ERC721 = "ERC721",
    ERC1155 = "ERC1155",
}

M.AssetContract = {
    type = "structure",
    members = {
        contractIdentifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tokenStandard = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deployerAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BlockchainInstant = {
    type = "structure",
    members = {
        time = {
            type = "timestamp",
        },
    },
}

M.OwnerIdentifier = {
    type = "structure",
    members = {
        address = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TokenIdentifier = {
    type = "structure",
    members = {
        network = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contractAddress = {
            type = "string",
        },
        tokenId = {
            type = "string",
        },
    },
}

M.BatchGetTokenBalanceInputItem = {
    type = "structure",
    members = {
        tokenIdentifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ownerIdentifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        atBlockchainInstant = {
            type = "structure",
        },
    },
}

M.BatchGetTokenBalanceInput = {
    type = "structure",
    members = {
        getTokenBalanceInputs = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ErrorType = {
    VALIDATION_EXCEPTION = "VALIDATION_EXCEPTION",
    RESOURCE_NOT_FOUND_EXCEPTION = "RESOURCE_NOT_FOUND_EXCEPTION",
}

M.BatchGetTokenBalanceErrorItem = {
    type = "structure",
    members = {
        tokenIdentifier = {
            type = "structure",
        },
        ownerIdentifier = {
            type = "structure",
        },
        atBlockchainInstant = {
            type = "structure",
        },
        errorCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorMessage = {
            type = "string",
            traits = {
                required = true,
            },
        },
        errorType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.BatchGetTokenBalanceOutputItem = {
    type = "structure",
    members = {
        ownerIdentifier = {
            type = "structure",
        },
        tokenIdentifier = {
            type = "structure",
        },
        balance = {
            type = "string",
            traits = {
                required = true,
            },
        },
        atBlockchainInstant = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        lastUpdatedTime = {
            type = "structure",
        },
    },
}

M.BatchGetTokenBalanceOutput = {
    type = "structure",
    members = {
        tokenBalances = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ResourceType = {
    COLLECTION = "collection",
}

M.ResourceNotFoundException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ServiceQuotaExceededException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceId = {
            type = "string",
            traits = {
                required = true,
            },
        },
        resourceType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ThrottlingException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        serviceCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        quotaCode = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "number",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    members = {
        name = {
            type = "string",
            traits = {
                required = true,
            },
        },
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
}

M.ValidationException = {
    type = "structure",
    error = "client",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        reason = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fieldList = {
            type = "list",
            member_type = "structure",
        },
    },
}

M.ConfirmationStatus = {
    FINAL = "FINAL",
    NONFINAL = "NONFINAL",
}

M.ConfirmationStatusFilter = {
    type = "structure",
    members = {
        include = {
            type = "list",
            member_type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContractFilter = {
    type = "structure",
    members = {
        network = {
            type = "string",
            traits = {
                required = true,
            },
        },
        tokenStandard = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deployerAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.ContractMetadata = {
    type = "structure",
    members = {
        name = {
            type = "string",
        },
        symbol = {
            type = "string",
        },
        decimals = {
            type = "number",
        },
    },
}

M.ExecutionStatus = {
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.GetAssetContractInput = {
    type = "structure",
    members = {
        contractIdentifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.GetAssetContractOutput = {
    type = "structure",
    members = {
        contractIdentifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        tokenStandard = {
            type = "string",
            traits = {
                required = true,
            },
        },
        deployerAddress = {
            type = "string",
            traits = {
                required = true,
            },
        },
        metadata = {
            type = "structure",
        },
    },
}

M.GetTokenBalanceInput = {
    type = "structure",
    members = {
        tokenIdentifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        ownerIdentifier = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        atBlockchainInstant = {
            type = "structure",
        },
    },
}

M.GetTokenBalanceOutput = {
    type = "structure",
    members = {
        ownerIdentifier = {
            type = "structure",
        },
        tokenIdentifier = {
            type = "structure",
        },
        balance = {
            type = "string",
            traits = {
                required = true,
            },
        },
        atBlockchainInstant = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        lastUpdatedTime = {
            type = "structure",
        },
    },
}

M.GetTransactionInput = {
    type = "structure",
    members = {
        transactionHash = {
            type = "string",
        },
        transactionId = {
            type = "string",
        },
        network = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.Transaction = {
    type = "structure",
    members = {
        network = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockHash = {
            type = "string",
        },
        transactionHash = {
            type = "string",
            traits = {
                required = true,
            },
        },
        blockNumber = {
            type = "string",
        },
        transactionTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        transactionIndex = {
            type = "number",
            traits = {
                required = true,
            },
        },
        numberOfTransactions = {
            type = "number",
            traits = {
                required = true,
            },
        },
        to = {
            type = "string",
            traits = {
                required = true,
            },
        },
        from = {
            type = "string",
        },
        contractAddress = {
            type = "string",
        },
        gasUsed = {
            type = "string",
        },
        cumulativeGasUsed = {
            type = "string",
        },
        effectiveGasPrice = {
            type = "string",
        },
        signatureV = {
            type = "number",
        },
        signatureR = {
            type = "string",
        },
        signatureS = {
            type = "string",
        },
        transactionFee = {
            type = "string",
        },
        transactionId = {
            type = "string",
        },
        confirmationStatus = {
            type = "string",
        },
        executionStatus = {
            type = "string",
        },
    },
}

M.GetTransactionOutput = {
    type = "structure",
    members = {
        transaction = {
            type = "structure",
            traits = {
                required = true,
            },
        },
    },
}

M.ListAssetContractsInput = {
    type = "structure",
    members = {
        contractFilter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListAssetContractsOutput = {
    type = "structure",
    members = {
        contracts = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListFilteredTransactionEventsSortBy = {
    blockchainInstant = "blockchainInstant",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.ListFilteredTransactionEventsSort = {
    type = "structure",
    members = {
        sortBy = {
            type = "string",
        },
        sortOrder = {
            type = "string",
        },
    },
}

M.TimeFilter = {
    type = "structure",
    members = {
        from = {
            type = "structure",
        },
        to = {
            type = "structure",
        },
    },
}

M.VoutFilter = {
    type = "structure",
    members = {
        voutSpent = {
            type = "boolean",
            traits = {
                required = true,
            },
        },
    },
}

M.ListFilteredTransactionEventsInput = {
    type = "structure",
    members = {
        network = {
            type = "string",
            traits = {
                required = true,
            },
        },
        addressIdentifierFilter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        timeFilter = {
            type = "structure",
        },
        voutFilter = {
            type = "structure",
        },
        confirmationStatusFilter = {
            type = "structure",
        },
        sort = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.QueryTransactionEventType = {
    ERC20_TRANSFER = "ERC20_TRANSFER",
    ERC20_MINT = "ERC20_MINT",
    ERC20_BURN = "ERC20_BURN",
    ERC20_DEPOSIT = "ERC20_DEPOSIT",
    ERC20_WITHDRAWAL = "ERC20_WITHDRAWAL",
    ERC721_TRANSFER = "ERC721_TRANSFER",
    ERC1155_TRANSFER = "ERC1155_TRANSFER",
    BITCOIN_VIN = "BITCOIN_VIN",
    BITCOIN_VOUT = "BITCOIN_VOUT",
    INTERNAL_ETH_TRANSFER = "INTERNAL_ETH_TRANSFER",
    ETH_TRANSFER = "ETH_TRANSFER",
}

M.TransactionEvent = {
    type = "structure",
    members = {
        network = {
            type = "string",
            traits = {
                required = true,
            },
        },
        transactionHash = {
            type = "string",
            traits = {
                required = true,
            },
        },
        eventType = {
            type = "string",
            traits = {
                required = true,
            },
        },
        from = {
            type = "string",
        },
        to = {
            type = "string",
        },
        value = {
            type = "string",
        },
        contractAddress = {
            type = "string",
        },
        tokenId = {
            type = "string",
        },
        transactionId = {
            type = "string",
        },
        voutIndex = {
            type = "number",
        },
        voutSpent = {
            type = "boolean",
        },
        spentVoutTransactionId = {
            type = "string",
        },
        spentVoutTransactionHash = {
            type = "string",
        },
        spentVoutIndex = {
            type = "number",
        },
        blockchainInstant = {
            type = "structure",
        },
        confirmationStatus = {
            type = "string",
        },
    },
}

M.ListFilteredTransactionEventsOutput = {
    type = "structure",
    members = {
        events = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.OwnerFilter = {
    type = "structure",
    members = {
        address = {
            type = "string",
            traits = {
                required = true,
            },
        },
    },
}

M.TokenFilter = {
    type = "structure",
    members = {
        network = {
            type = "string",
            traits = {
                required = true,
            },
        },
        contractAddress = {
            type = "string",
        },
        tokenId = {
            type = "string",
        },
    },
}

M.ListTokenBalancesInput = {
    type = "structure",
    members = {
        ownerFilter = {
            type = "structure",
        },
        tokenFilter = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.TokenBalance = {
    type = "structure",
    members = {
        ownerIdentifier = {
            type = "structure",
        },
        tokenIdentifier = {
            type = "structure",
        },
        balance = {
            type = "string",
            traits = {
                required = true,
            },
        },
        atBlockchainInstant = {
            type = "structure",
            traits = {
                required = true,
            },
        },
        lastUpdatedTime = {
            type = "structure",
        },
    },
}

M.ListTokenBalancesOutput = {
    type = "structure",
    members = {
        tokenBalances = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTransactionEventsInput = {
    type = "structure",
    members = {
        transactionHash = {
            type = "string",
        },
        transactionId = {
            type = "string",
        },
        network = {
            type = "string",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
    },
}

M.ListTransactionEventsOutput = {
    type = "structure",
    members = {
        events = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

M.ListTransactionsSortBy = {
    TRANSACTION_TIMESTAMP = "TRANSACTION_TIMESTAMP",
}

M.ListTransactionsSort = {
    type = "structure",
    members = {
        sortBy = {
            type = "string",
        },
        sortOrder = {
            type = "string",
        },
    },
}

M.ListTransactionsInput = {
    type = "structure",
    members = {
        address = {
            type = "string",
            traits = {
                required = true,
            },
        },
        network = {
            type = "string",
            traits = {
                required = true,
            },
        },
        fromBlockchainInstant = {
            type = "structure",
        },
        toBlockchainInstant = {
            type = "structure",
        },
        sort = {
            type = "structure",
        },
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "number",
        },
        confirmationStatusFilter = {
            type = "structure",
        },
    },
}

M.TransactionOutputItem = {
    type = "structure",
    members = {
        transactionHash = {
            type = "string",
            traits = {
                required = true,
            },
        },
        transactionId = {
            type = "string",
        },
        network = {
            type = "string",
            traits = {
                required = true,
            },
        },
        transactionTimestamp = {
            type = "timestamp",
            traits = {
                required = true,
            },
        },
        confirmationStatus = {
            type = "string",
        },
    },
}

M.ListTransactionsOutput = {
    type = "structure",
    members = {
        transactions = {
            type = "list",
            member_type = "structure",
            traits = {
                required = true,
            },
        },
        nextToken = {
            type = "string",
        },
    },
}

return M
