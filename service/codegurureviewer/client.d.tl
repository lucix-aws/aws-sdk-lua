local types = require("codegurureviewer.types")

local record Client
    associateRepository: function(Client, types.AssociateRepositoryInput): types.AssociateRepositoryOutput, table
    createCodeReview: function(Client, types.CreateCodeReviewInput): types.CreateCodeReviewOutput, table
    describeCodeReview: function(Client, types.DescribeCodeReviewInput): types.DescribeCodeReviewOutput, table
    describeRecommendationFeedback: function(Client, types.DescribeRecommendationFeedbackInput): types.DescribeRecommendationFeedbackOutput, table
    describeRepositoryAssociation: function(Client, types.DescribeRepositoryAssociationInput): types.DescribeRepositoryAssociationOutput, table
    disassociateRepository: function(Client, types.DisassociateRepositoryInput): types.DisassociateRepositoryOutput, table
    listCodeReviews: function(Client, types.ListCodeReviewsInput): types.ListCodeReviewsOutput, table
    listRecommendationFeedback: function(Client, types.ListRecommendationFeedbackInput): types.ListRecommendationFeedbackOutput, table
    listRecommendations: function(Client, types.ListRecommendationsInput): types.ListRecommendationsOutput, table
    listRepositoryAssociations: function(Client, types.ListRepositoryAssociationsInput): types.ListRepositoryAssociationsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    putRecommendationFeedback: function(Client, types.PutRecommendationFeedbackInput): types.PutRecommendationFeedbackOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
end

local record M
    new: function(table): Client
end

return M
