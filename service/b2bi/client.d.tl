local types = require("b2bi.types")

local record Client
    createCapability: function(Client, types.CreateCapabilityInput): types.CreateCapabilityOutput, table
    createPartnership: function(Client, types.CreatePartnershipInput): types.CreatePartnershipOutput, table
    createProfile: function(Client, types.CreateProfileInput): types.CreateProfileOutput, table
    createStarterMappingTemplate: function(Client, types.CreateStarterMappingTemplateInput): types.CreateStarterMappingTemplateOutput, table
    createTransformer: function(Client, types.CreateTransformerInput): types.CreateTransformerOutput, table
    deleteCapability: function(Client, types.DeleteCapabilityInput): types.DeleteCapabilityOutput, table
    deletePartnership: function(Client, types.DeletePartnershipInput): types.DeletePartnershipOutput, table
    deleteProfile: function(Client, types.DeleteProfileInput): types.DeleteProfileOutput, table
    deleteTransformer: function(Client, types.DeleteTransformerInput): types.DeleteTransformerOutput, table
    generateMapping: function(Client, types.GenerateMappingInput): types.GenerateMappingOutput, table
    getCapability: function(Client, types.GetCapabilityInput): types.GetCapabilityOutput, table
    getPartnership: function(Client, types.GetPartnershipInput): types.GetPartnershipOutput, table
    getProfile: function(Client, types.GetProfileInput): types.GetProfileOutput, table
    getTransformer: function(Client, types.GetTransformerInput): types.GetTransformerOutput, table
    getTransformerJob: function(Client, types.GetTransformerJobInput): types.GetTransformerJobOutput, table
    listCapabilities: function(Client, types.ListCapabilitiesInput): types.ListCapabilitiesOutput, table
    listPartnerships: function(Client, types.ListPartnershipsInput): types.ListPartnershipsOutput, table
    listProfiles: function(Client, types.ListProfilesInput): types.ListProfilesOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTransformers: function(Client, types.ListTransformersInput): types.ListTransformersOutput, table
    startTransformerJob: function(Client, types.StartTransformerJobInput): types.StartTransformerJobOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    testConversion: function(Client, types.TestConversionInput): types.TestConversionOutput, table
    testMapping: function(Client, types.TestMappingInput): types.TestMappingOutput, table
    testParsing: function(Client, types.TestParsingInput): types.TestParsingOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateCapability: function(Client, types.UpdateCapabilityInput): types.UpdateCapabilityOutput, table
    updatePartnership: function(Client, types.UpdatePartnershipInput): types.UpdatePartnershipOutput, table
    updateProfile: function(Client, types.UpdateProfileInput): types.UpdateProfileOutput, table
    updateTransformer: function(Client, types.UpdateTransformerInput): types.UpdateTransformerOutput, table
end

local record M
    new: function(table): Client
end

return M
