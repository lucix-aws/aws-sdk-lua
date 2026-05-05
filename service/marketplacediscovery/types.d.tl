local record GetListingInput
    listingId: string
end

local record GetListingOutput
    associatedEntities: {ListingAssociatedEntity}
    badges: {ListingBadge}
    catalog: string
    categories: {Category}
    fulfillmentOptionSummaries: {FulfillmentOptionSummary}
    highlights: {string}
    integrationGuide: string
    listingId: string
    listingName: string
    logoThumbnailUrl: string
    longDescription: string
    pricingModels: {PricingModel}
    pricingUnits: {PricingUnit}
    promotionalMedia: {PromotionalMedia}
    publisher: SellerInformation
    resources: {Resource}
    reviewSummary: ReviewSummary
    sellerEngagements: {SellerEngagement}
    shortDescription: string
    useCases: {UseCaseEntry}
end

local record GetOfferInput
    offerId: string
end

local record GetOfferOutput
    offerId: string
    catalog: string
    offerName: string
    agreementProposalId: string
    expirationTime: number
    availableFromTime: number
    sellerOfRecord: SellerInformation
    replacementAgreementId: string
    pricingModel: PricingModel
    badges: {PurchaseOptionBadge}
    associatedEntities: {OfferAssociatedEntity}
end

local record GetOfferSetInput
    offerSetId: string
end

local record GetOfferSetOutput
    offerSetId: string
    catalog: string
    offerSetName: string
    availableFromTime: number
    expirationTime: number
    buyerNotes: string
    sellerOfRecord: SellerInformation
    badges: {PurchaseOptionBadge}
    associatedEntities: {OfferSetAssociatedEntity}
end

local record GetOfferTermsInput
    offerId: string
    maxResults: number
    nextToken: string
end

local record GetOfferTermsOutput
    offerTerms: {OfferTerm}
    nextToken: string
end

local record GetProductInput
    productId: string
end

local record GetProductOutput
    productId: string
    catalog: string
    productName: string
    deployedOnAws: string
    shortDescription: string
    longDescription: string
    manufacturer: SellerInformation
    logoThumbnailUrl: string
    fulfillmentOptionSummaries: {FulfillmentOptionSummary}
    categories: {Category}
    highlights: {string}
    promotionalMedia: {PromotionalMedia}
    resources: {Resource}
    sellerEngagements: {SellerEngagement}
end

local record ListFulfillmentOptionsInput
    productId: string
    maxResults: number
    nextToken: string
end

local record ListFulfillmentOptionsOutput
    fulfillmentOptions: {FulfillmentOption}
    nextToken: string
end

local record ListPurchaseOptionsInput
    filters: {PurchaseOptionFilter}
    maxResults: number
    nextToken: string
end

local record ListPurchaseOptionsOutput
    purchaseOptions: {PurchaseOptionSummary}
    nextToken: string
end

local record SearchFacetsInput
    searchText: string
    filters: {SearchFilter}
    facetTypes: {string}
    nextToken: string
end

local record SearchFacetsOutput
    totalResults: number
    listingFacets: {string : {ListingFacet}}
    nextToken: string
end

local record SearchListingsInput
    searchText: string
    filters: {SearchFilter}
    maxResults: number
    sortBy: string
    sortOrder: string
    nextToken: string
end

local record SearchListingsOutput
    totalResults: number
    listingSummaries: {ListingSummary}
    nextToken: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record ResourceNotFoundException
    message: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local record AccessDeniedException
    message: string
end

local record InternalServerException
    message: string
end

local record ThrottlingException
    message: string
end

local record ValidationException
    message: string
    reason: string
end

local type SearchListingsSortOrder = "DESCENDING" | "ASCENDING"

local type DeployedOnAwsStatus = "DEPLOYED" | "NOT_DEPLOYED" | "NOT_APPLICABLE"

local type SearchListingsSortBy = "RELEVANCE" | "AVERAGE_CUSTOMER_RATING"

local record M
    GetListingInput: GetListingInput
    GetListingOutput: GetListingOutput
    GetOfferInput: GetOfferInput
    GetOfferOutput: GetOfferOutput
    GetOfferSetInput: GetOfferSetInput
    GetOfferSetOutput: GetOfferSetOutput
    GetOfferTermsInput: GetOfferTermsInput
    GetOfferTermsOutput: GetOfferTermsOutput
    GetProductInput: GetProductInput
    GetProductOutput: GetProductOutput
    ListFulfillmentOptionsInput: ListFulfillmentOptionsInput
    ListFulfillmentOptionsOutput: ListFulfillmentOptionsOutput
    ListPurchaseOptionsInput: ListPurchaseOptionsInput
    ListPurchaseOptionsOutput: ListPurchaseOptionsOutput
    SearchFacetsInput: SearchFacetsInput
    SearchFacetsOutput: SearchFacetsOutput
    SearchListingsInput: SearchListingsInput
    SearchListingsOutput: SearchListingsOutput
end

return M
