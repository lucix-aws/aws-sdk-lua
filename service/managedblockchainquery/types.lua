local M = {}

M.AccessDeniedException = {
    type = "structure",
    id = "AccessDeniedException",
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
    id = "AddressIdentifierFilter",
    members = {
        transactionEventToAddress = {
            type = "list",
            member = { type = "string" },
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
    id = "ContractIdentifier",
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
    id = "AssetContract",
    members = {
        contractIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContractIdentifier }),
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
    id = "BlockchainInstant",
    members = {
        time = {
            type = "timestamp",
        },
    },
}

M.OwnerIdentifier = {
    type = "structure",
    id = "OwnerIdentifier",
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
    id = "TokenIdentifier",
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
    id = "BatchGetTokenBalanceInputItem",
    members = {
        tokenIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TokenIdentifier }),
        ownerIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OwnerIdentifier }),
        atBlockchainInstant = M.BlockchainInstant,
    },
}

M.BatchGetTokenBalanceInput = {
    type = "structure",
    id = "BatchGetTokenBalanceInput",
    members = {
        getTokenBalanceInputs = {
            type = "list",
            member = M.BatchGetTokenBalanceInputItem,
        },
    },
}

M.ErrorType = {
    VALIDATION_EXCEPTION = "VALIDATION_EXCEPTION",
    RESOURCE_NOT_FOUND_EXCEPTION = "RESOURCE_NOT_FOUND_EXCEPTION",
}

M.BatchGetTokenBalanceErrorItem = {
    type = "structure",
    id = "BatchGetTokenBalanceErrorItem",
    members = {
        tokenIdentifier = M.TokenIdentifier,
        ownerIdentifier = M.OwnerIdentifier,
        atBlockchainInstant = M.BlockchainInstant,
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
    id = "BatchGetTokenBalanceOutputItem",
    members = {
        ownerIdentifier = M.OwnerIdentifier,
        tokenIdentifier = M.TokenIdentifier,
        balance = {
            type = "string",
            traits = {
                required = true,
            },
        },
        atBlockchainInstant = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BlockchainInstant }),
        lastUpdatedTime = M.BlockchainInstant,
    },
}

M.BatchGetTokenBalanceOutput = {
    type = "structure",
    id = "BatchGetTokenBalanceOutput",
    members = {
        tokenBalances = {
            type = "list",
            member = M.BatchGetTokenBalanceOutputItem,
            traits = {
                required = true,
            },
        },
        errors = {
            type = "list",
            member = M.BatchGetTokenBalanceErrorItem,
            traits = {
                required = true,
            },
        },
    },
}

M.InternalServerException = {
    type = "structure",
    id = "InternalServerException",
    error = "server",
    members = {
        message = {
            type = "string",
            traits = {
                required = true,
            },
        },
        retryAfterSeconds = {
            type = "integer",
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
    id = "ResourceNotFoundException",
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
    id = "ServiceQuotaExceededException",
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
    id = "ThrottlingException",
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
            type = "integer",
            traits = {
                http_header = "Retry-After",
            },
        },
    },
}

M.ValidationExceptionField = {
    type = "structure",
    id = "ValidationExceptionField",
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
    id = "ValidationException",
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
            member = M.ValidationExceptionField,
        },
    },
}

M.ConfirmationStatus = {
    FINAL = "FINAL",
    NONFINAL = "NONFINAL",
}

M.ConfirmationStatusFilter = {
    type = "structure",
    id = "ConfirmationStatusFilter",
    members = {
        include = {
            type = "list",
            member = { type = "string" },
            traits = {
                required = true,
            },
        },
    },
}

M.ContractFilter = {
    type = "structure",
    id = "ContractFilter",
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
    id = "ContractMetadata",
    members = {
        name = {
            type = "string",
        },
        symbol = {
            type = "string",
        },
        decimals = {
            type = "integer",
        },
    },
}

M.ExecutionStatus = {
    FAILED = "FAILED",
    SUCCEEDED = "SUCCEEDED",
}

M.GetAssetContractInput = {
    type = "structure",
    id = "GetAssetContractInput",
    members = {
        contractIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContractIdentifier }),
    },
}

M.GetAssetContractOutput = {
    type = "structure",
    id = "GetAssetContractOutput",
    members = {
        contractIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContractIdentifier }),
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
        metadata = M.ContractMetadata,
    },
}

M.GetTokenBalanceInput = {
    type = "structure",
    id = "GetTokenBalanceInput",
    members = {
        tokenIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TokenIdentifier }),
        ownerIdentifier = setmetatable({ traits = {
            required = true,
        } }, { __index = M.OwnerIdentifier }),
        atBlockchainInstant = M.BlockchainInstant,
    },
}

M.GetTokenBalanceOutput = {
    type = "structure",
    id = "GetTokenBalanceOutput",
    members = {
        ownerIdentifier = M.OwnerIdentifier,
        tokenIdentifier = M.TokenIdentifier,
        balance = {
            type = "string",
            traits = {
                required = true,
            },
        },
        atBlockchainInstant = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BlockchainInstant }),
        lastUpdatedTime = M.BlockchainInstant,
    },
}

M.GetTransactionInput = {
    type = "structure",
    id = "GetTransactionInput",
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
    id = "Transaction",
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
            type = "long",
            traits = {
                required = true,
            },
        },
        numberOfTransactions = {
            type = "long",
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
            type = "integer",
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
    id = "GetTransactionOutput",
    members = {
        transaction = setmetatable({ traits = {
            required = true,
        } }, { __index = M.Transaction }),
    },
}

M.ListAssetContractsInput = {
    type = "structure",
    id = "ListAssetContractsInput",
    members = {
        contractFilter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.ContractFilter }),
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.ListAssetContractsOutput = {
    type = "structure",
    id = "ListAssetContractsOutput",
    members = {
        contracts = {
            type = "list",
            member = M.AssetContract,
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
    id = "ListFilteredTransactionEventsSort",
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
    id = "TimeFilter",
    members = {
        from = M.BlockchainInstant,
        to = M.BlockchainInstant,
    },
}

M.VoutFilter = {
    type = "structure",
    id = "VoutFilter",
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
    id = "ListFilteredTransactionEventsInput",
    members = {
        network = {
            type = "string",
            traits = {
                required = true,
            },
        },
        addressIdentifierFilter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.AddressIdentifierFilter }),
        timeFilter = M.TimeFilter,
        voutFilter = M.VoutFilter,
        confirmationStatusFilter = M.ConfirmationStatusFilter,
        sort = M.ListFilteredTransactionEventsSort,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
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
    id = "TransactionEvent",
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
            type = "integer",
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
            type = "integer",
        },
        blockchainInstant = M.BlockchainInstant,
        confirmationStatus = {
            type = "string",
        },
    },
}

M.ListFilteredTransactionEventsOutput = {
    type = "structure",
    id = "ListFilteredTransactionEventsOutput",
    members = {
        events = {
            type = "list",
            member = M.TransactionEvent,
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
    id = "OwnerFilter",
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
    id = "TokenFilter",
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
    id = "ListTokenBalancesInput",
    members = {
        ownerFilter = M.OwnerFilter,
        tokenFilter = setmetatable({ traits = {
            required = true,
        } }, { __index = M.TokenFilter }),
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
    },
}

M.TokenBalance = {
    type = "structure",
    id = "TokenBalance",
    members = {
        ownerIdentifier = M.OwnerIdentifier,
        tokenIdentifier = M.TokenIdentifier,
        balance = {
            type = "string",
            traits = {
                required = true,
            },
        },
        atBlockchainInstant = setmetatable({ traits = {
            required = true,
        } }, { __index = M.BlockchainInstant }),
        lastUpdatedTime = M.BlockchainInstant,
    },
}

M.ListTokenBalancesOutput = {
    type = "structure",
    id = "ListTokenBalancesOutput",
    members = {
        tokenBalances = {
            type = "list",
            member = M.TokenBalance,
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
    id = "ListTransactionEventsInput",
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
            type = "integer",
        },
    },
}

M.ListTransactionEventsOutput = {
    type = "structure",
    id = "ListTransactionEventsOutput",
    members = {
        events = {
            type = "list",
            member = M.TransactionEvent,
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
    id = "ListTransactionsSort",
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
    id = "ListTransactionsInput",
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
        fromBlockchainInstant = M.BlockchainInstant,
        toBlockchainInstant = M.BlockchainInstant,
        sort = M.ListTransactionsSort,
        nextToken = {
            type = "string",
        },
        maxResults = {
            type = "integer",
        },
        confirmationStatusFilter = M.ConfirmationStatusFilter,
    },
}

M.TransactionOutputItem = {
    type = "structure",
    id = "TransactionOutputItem",
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
    id = "ListTransactionsOutput",
    members = {
        transactions = {
            type = "list",
            member = M.TransactionOutputItem,
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
