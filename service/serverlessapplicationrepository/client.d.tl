local types = require("serverlessapplicationrepository.types")

local record Client
    createApplication: function(Client, types.CreateApplicationInput): types.CreateApplicationOutput, table
    createApplicationVersion: function(Client, types.CreateApplicationVersionInput): types.CreateApplicationVersionOutput, table
    createCloudFormationChangeSet: function(Client, types.CreateCloudFormationChangeSetInput): types.CreateCloudFormationChangeSetOutput, table
    createCloudFormationTemplate: function(Client, types.CreateCloudFormationTemplateInput): types.CreateCloudFormationTemplateOutput, table
    deleteApplication: function(Client, types.DeleteApplicationInput): types.DeleteApplicationOutput, table
    getApplication: function(Client, types.GetApplicationInput): types.GetApplicationOutput, table
    getApplicationPolicy: function(Client, types.GetApplicationPolicyInput): types.GetApplicationPolicyOutput, table
    getCloudFormationTemplate: function(Client, types.GetCloudFormationTemplateInput): types.GetCloudFormationTemplateOutput, table
    listApplicationDependencies: function(Client, types.ListApplicationDependenciesInput): types.ListApplicationDependenciesOutput, table
    listApplications: function(Client, types.ListApplicationsInput): types.ListApplicationsOutput, table
    listApplicationVersions: function(Client, types.ListApplicationVersionsInput): types.ListApplicationVersionsOutput, table
    putApplicationPolicy: function(Client, types.PutApplicationPolicyInput): types.PutApplicationPolicyOutput, table
    unshareApplication: function(Client, types.UnshareApplicationInput): types.UnshareApplicationOutput, table
    updateApplication: function(Client, types.UpdateApplicationInput): types.UpdateApplicationOutput, table
end

local record M
    new: function(table): Client
end

return M
