local types = require("amplifyuibuilder.types")

local record Client
    createComponent: function(Client, types.CreateComponentInput): types.CreateComponentOutput, table
    createForm: function(Client, types.CreateFormInput): types.CreateFormOutput, table
    createTheme: function(Client, types.CreateThemeInput): types.CreateThemeOutput, table
    deleteComponent: function(Client, types.DeleteComponentInput): types.DeleteComponentOutput, table
    deleteForm: function(Client, types.DeleteFormInput): types.DeleteFormOutput, table
    deleteTheme: function(Client, types.DeleteThemeInput): types.DeleteThemeOutput, table
    exchangeCodeForToken: function(Client, types.ExchangeCodeForTokenInput): types.ExchangeCodeForTokenOutput, table
    exportComponents: function(Client, types.ExportComponentsInput): types.ExportComponentsOutput, table
    exportForms: function(Client, types.ExportFormsInput): types.ExportFormsOutput, table
    exportThemes: function(Client, types.ExportThemesInput): types.ExportThemesOutput, table
    getCodegenJob: function(Client, types.GetCodegenJobInput): types.GetCodegenJobOutput, table
    getComponent: function(Client, types.GetComponentInput): types.GetComponentOutput, table
    getForm: function(Client, types.GetFormInput): types.GetFormOutput, table
    getMetadata: function(Client, types.GetMetadataInput): types.GetMetadataOutput, table
    getTheme: function(Client, types.GetThemeInput): types.GetThemeOutput, table
    listCodegenJobs: function(Client, types.ListCodegenJobsInput): types.ListCodegenJobsOutput, table
    listComponents: function(Client, types.ListComponentsInput): types.ListComponentsOutput, table
    listForms: function(Client, types.ListFormsInput): types.ListFormsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listThemes: function(Client, types.ListThemesInput): types.ListThemesOutput, table
    putMetadataFlag: function(Client, types.PutMetadataFlagInput): types.PutMetadataFlagOutput, table
    refreshToken: function(Client, types.RefreshTokenInput): types.RefreshTokenOutput, table
    startCodegenJob: function(Client, types.StartCodegenJobInput): types.StartCodegenJobOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateComponent: function(Client, types.UpdateComponentInput): types.UpdateComponentOutput, table
    updateForm: function(Client, types.UpdateFormInput): types.UpdateFormOutput, table
    updateTheme: function(Client, types.UpdateThemeInput): types.UpdateThemeOutput, table
end

local record M
    new: function(table): Client
end

return M
