local M = {}

M.AmiProductVisibilityString = {
    Limited = "Limited",
    Public = "Public",
    Restricted = "Restricted",
    Draft = "Draft",
}

M.AmiProductSortBy = {
    EntityId = "EntityId",
    LastModifiedDate = "LastModifiedDate",
    ProductTitle = "ProductTitle",
    Visibility = "Visibility",
}

M.SortOrder = {
    ASCENDING = "ASCENDING",
    DESCENDING = "DESCENDING",
}

M.FailureCode = {
    ClientError = "CLIENT_ERROR",
    ServerFault = "SERVER_FAULT",
}

M.Intent = {
    VALIDATE = "VALIDATE",
    APPLY = "APPLY",
}

M.ChangeStatus = {
    PREPARING = "PREPARING",
    APPLYING = "APPLYING",
    SUCCEEDED = "SUCCEEDED",
    CANCELLED = "CANCELLED",
    FAILED = "FAILED",
}

M.ContainerProductVisibilityString = {
    Limited = "Limited",
    Public = "Public",
    Restricted = "Restricted",
    Draft = "Draft",
}

M.DataProductVisibilityString = {
    Limited = "Limited",
    Public = "Public",
    Restricted = "Restricted",
    Unavailable = "Unavailable",
    Draft = "Draft",
}

M.MachineLearningProductVisibilityString = {
    Limited = "Limited",
    Public = "Public",
    Restricted = "Restricted",
    Draft = "Draft",
}

M.OfferStateString = {
    Draft = "Draft",
    Released = "Released",
}

M.OfferTargetingString = {
    BuyerAccounts = "BuyerAccounts",
    ParticipatingPrograms = "ParticipatingPrograms",
    CountryCodes = "CountryCodes",
    None = "None",
}

M.OfferSetStateString = {
    Draft = "Draft",
    Released = "Released",
}

M.ResaleAuthorizationStatusString = {
    Draft = "Draft",
    Active = "Active",
    Restricted = "Restricted",
}

M.SaaSProductVisibilityString = {
    Limited = "Limited",
    Public = "Public",
    Restricted = "Restricted",
    Draft = "Draft",
}

M.ContainerProductSortBy = {
    EntityId = "EntityId",
    LastModifiedDate = "LastModifiedDate",
    ProductTitle = "ProductTitle",
    Visibility = "Visibility",
    CompatibleAWSServices = "CompatibleAWSServices",
}

M.DataProductSortBy = {
    EntityId = "EntityId",
    ProductTitle = "ProductTitle",
    Visibility = "Visibility",
    LastModifiedDate = "LastModifiedDate",
}

M.MachineLearningProductSortBy = {
    EntityId = "EntityId",
    LastModifiedDate = "LastModifiedDate",
    ProductTitle = "ProductTitle",
    Visibility = "Visibility",
}

M.OfferSetSortBy = {
    Name = "Name",
    State = "State",
    ReleaseDate = "ReleaseDate",
    SolutionId = "SolutionId",
    EntityId = "EntityId",
    LastModifiedDate = "LastModifiedDate",
}

M.OfferSortBy = {
    EntityId = "EntityId",
    Name = "Name",
    ProductId = "ProductId",
    ResaleAuthorizationId = "ResaleAuthorizationId",
    ReleaseDate = "ReleaseDate",
    AvailabilityEndDate = "AvailabilityEndDate",
    BuyerAccounts = "BuyerAccounts",
    State = "State",
    Targeting = "Targeting",
    LastModifiedDate = "LastModifiedDate",
    OfferSetId = "OfferSetId",
}

M.ResaleAuthorizationSortBy = {
    EntityId = "EntityId",
    Name = "Name",
    ProductId = "ProductId",
    ProductName = "ProductName",
    ManufacturerAccountId = "ManufacturerAccountId",
    ManufacturerLegalName = "ManufacturerLegalName",
    ResellerAccountID = "ResellerAccountID",
    ResellerLegalName = "ResellerLegalName",
    Status = "Status",
    OfferExtendedStatus = "OfferExtendedStatus",
    CreatedDate = "CreatedDate",
    AvailabilityEndDate = "AvailabilityEndDate",
    LastModifiedDate = "LastModifiedDate",
}

M.SaaSProductSortBy = {
    EntityId = "EntityId",
    ProductTitle = "ProductTitle",
    Visibility = "Visibility",
    LastModifiedDate = "LastModifiedDate",
    DeliveryOptionTypes = "DeliveryOptionTypes",
}

M.OwnershipType = {
    SELF = "SELF",
    SHARED = "SHARED",
}

return M
