local types = require("appstream.types")

local record Client
    associateAppBlockBuilderAppBlock: function(Client, types.AssociateAppBlockBuilderAppBlockInput): types.AssociateAppBlockBuilderAppBlockOutput, table
    associateApplicationFleet: function(Client, types.AssociateApplicationFleetInput): types.AssociateApplicationFleetOutput, table
    associateApplicationToEntitlement: function(Client, types.AssociateApplicationToEntitlementInput): types.AssociateApplicationToEntitlementOutput, table
    associateFleet: function(Client, types.AssociateFleetInput): types.AssociateFleetOutput, table
    associateSoftwareToImageBuilder: function(Client, types.AssociateSoftwareToImageBuilderInput): types.AssociateSoftwareToImageBuilderOutput, table
    batchAssociateUserStack: function(Client, types.BatchAssociateUserStackInput): types.BatchAssociateUserStackOutput, table
    batchDisassociateUserStack: function(Client, types.BatchDisassociateUserStackInput): types.BatchDisassociateUserStackOutput, table
    copyImage: function(Client, types.CopyImageInput): types.CopyImageOutput, table
    createAppBlock: function(Client, types.CreateAppBlockInput): types.CreateAppBlockOutput, table
    createAppBlockBuilder: function(Client, types.CreateAppBlockBuilderInput): types.CreateAppBlockBuilderOutput, table
    createAppBlockBuilderStreamingURL: function(Client, types.CreateAppBlockBuilderStreamingURLInput): types.CreateAppBlockBuilderStreamingURLOutput, table
    createApplication: function(Client, types.CreateApplicationInput): types.CreateApplicationOutput, table
    createDirectoryConfig: function(Client, types.CreateDirectoryConfigInput): types.CreateDirectoryConfigOutput, table
    createEntitlement: function(Client, types.CreateEntitlementInput): types.CreateEntitlementOutput, table
    createExportImageTask: function(Client, types.CreateExportImageTaskInput): types.CreateExportImageTaskOutput, table
    createFleet: function(Client, types.CreateFleetInput): types.CreateFleetOutput, table
    createImageBuilder: function(Client, types.CreateImageBuilderInput): types.CreateImageBuilderOutput, table
    createImageBuilderStreamingURL: function(Client, types.CreateImageBuilderStreamingURLInput): types.CreateImageBuilderStreamingURLOutput, table
    createImportedImage: function(Client, types.CreateImportedImageInput): types.CreateImportedImageOutput, table
    createStack: function(Client, types.CreateStackInput): types.CreateStackOutput, table
    createStreamingURL: function(Client, types.CreateStreamingURLInput): types.CreateStreamingURLOutput, table
    createThemeForStack: function(Client, types.CreateThemeForStackInput): types.CreateThemeForStackOutput, table
    createUpdatedImage: function(Client, types.CreateUpdatedImageInput): types.CreateUpdatedImageOutput, table
    createUsageReportSubscription: function(Client, types.CreateUsageReportSubscriptionInput): types.CreateUsageReportSubscriptionOutput, table
    createUser: function(Client, types.CreateUserInput): types.CreateUserOutput, table
    deleteAppBlock: function(Client, types.DeleteAppBlockInput): types.DeleteAppBlockOutput, table
    deleteAppBlockBuilder: function(Client, types.DeleteAppBlockBuilderInput): types.DeleteAppBlockBuilderOutput, table
    deleteApplication: function(Client, types.DeleteApplicationInput): types.DeleteApplicationOutput, table
    deleteDirectoryConfig: function(Client, types.DeleteDirectoryConfigInput): types.DeleteDirectoryConfigOutput, table
    deleteEntitlement: function(Client, types.DeleteEntitlementInput): types.DeleteEntitlementOutput, table
    deleteFleet: function(Client, types.DeleteFleetInput): types.DeleteFleetOutput, table
    deleteImage: function(Client, types.DeleteImageInput): types.DeleteImageOutput, table
    deleteImageBuilder: function(Client, types.DeleteImageBuilderInput): types.DeleteImageBuilderOutput, table
    deleteImagePermissions: function(Client, types.DeleteImagePermissionsInput): types.DeleteImagePermissionsOutput, table
    deleteStack: function(Client, types.DeleteStackInput): types.DeleteStackOutput, table
    deleteThemeForStack: function(Client, types.DeleteThemeForStackInput): types.DeleteThemeForStackOutput, table
    deleteUsageReportSubscription: function(Client, types.DeleteUsageReportSubscriptionInput): types.DeleteUsageReportSubscriptionOutput, table
    deleteUser: function(Client, types.DeleteUserInput): types.DeleteUserOutput, table
    describeAppBlockBuilderAppBlockAssociations: function(Client, types.DescribeAppBlockBuilderAppBlockAssociationsInput): types.DescribeAppBlockBuilderAppBlockAssociationsOutput, table
    describeAppBlockBuilders: function(Client, types.DescribeAppBlockBuildersInput): types.DescribeAppBlockBuildersOutput, table
    describeAppBlocks: function(Client, types.DescribeAppBlocksInput): types.DescribeAppBlocksOutput, table
    describeApplicationFleetAssociations: function(Client, types.DescribeApplicationFleetAssociationsInput): types.DescribeApplicationFleetAssociationsOutput, table
    describeApplications: function(Client, types.DescribeApplicationsInput): types.DescribeApplicationsOutput, table
    describeAppLicenseUsage: function(Client, types.DescribeAppLicenseUsageInput): types.DescribeAppLicenseUsageOutput, table
    describeDirectoryConfigs: function(Client, types.DescribeDirectoryConfigsInput): types.DescribeDirectoryConfigsOutput, table
    describeEntitlements: function(Client, types.DescribeEntitlementsInput): types.DescribeEntitlementsOutput, table
    describeFleets: function(Client, types.DescribeFleetsInput): types.DescribeFleetsOutput, table
    describeImageBuilders: function(Client, types.DescribeImageBuildersInput): types.DescribeImageBuildersOutput, table
    describeImagePermissions: function(Client, types.DescribeImagePermissionsInput): types.DescribeImagePermissionsOutput, table
    describeImages: function(Client, types.DescribeImagesInput): types.DescribeImagesOutput, table
    describeSessions: function(Client, types.DescribeSessionsInput): types.DescribeSessionsOutput, table
    describeSoftwareAssociations: function(Client, types.DescribeSoftwareAssociationsInput): types.DescribeSoftwareAssociationsOutput, table
    describeStacks: function(Client, types.DescribeStacksInput): types.DescribeStacksOutput, table
    describeThemeForStack: function(Client, types.DescribeThemeForStackInput): types.DescribeThemeForStackOutput, table
    describeUsageReportSubscriptions: function(Client, types.DescribeUsageReportSubscriptionsInput): types.DescribeUsageReportSubscriptionsOutput, table
    describeUsers: function(Client, types.DescribeUsersInput): types.DescribeUsersOutput, table
    describeUserStackAssociations: function(Client, types.DescribeUserStackAssociationsInput): types.DescribeUserStackAssociationsOutput, table
    disableUser: function(Client, types.DisableUserInput): types.DisableUserOutput, table
    disassociateAppBlockBuilderAppBlock: function(Client, types.DisassociateAppBlockBuilderAppBlockInput): types.DisassociateAppBlockBuilderAppBlockOutput, table
    disassociateApplicationFleet: function(Client, types.DisassociateApplicationFleetInput): types.DisassociateApplicationFleetOutput, table
    disassociateApplicationFromEntitlement: function(Client, types.DisassociateApplicationFromEntitlementInput): types.DisassociateApplicationFromEntitlementOutput, table
    disassociateFleet: function(Client, types.DisassociateFleetInput): types.DisassociateFleetOutput, table
    disassociateSoftwareFromImageBuilder: function(Client, types.DisassociateSoftwareFromImageBuilderInput): types.DisassociateSoftwareFromImageBuilderOutput, table
    drainSessionInstance: function(Client, types.DrainSessionInstanceInput): types.DrainSessionInstanceOutput, table
    enableUser: function(Client, types.EnableUserInput): types.EnableUserOutput, table
    expireSession: function(Client, types.ExpireSessionInput): types.ExpireSessionOutput, table
    getExportImageTask: function(Client, types.GetExportImageTaskInput): types.GetExportImageTaskOutput, table
    listAssociatedFleets: function(Client, types.ListAssociatedFleetsInput): types.ListAssociatedFleetsOutput, table
    listAssociatedStacks: function(Client, types.ListAssociatedStacksInput): types.ListAssociatedStacksOutput, table
    listEntitledApplications: function(Client, types.ListEntitledApplicationsInput): types.ListEntitledApplicationsOutput, table
    listExportImageTasks: function(Client, types.ListExportImageTasksInput): types.ListExportImageTasksOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    startAppBlockBuilder: function(Client, types.StartAppBlockBuilderInput): types.StartAppBlockBuilderOutput, table
    startFleet: function(Client, types.StartFleetInput): types.StartFleetOutput, table
    startImageBuilder: function(Client, types.StartImageBuilderInput): types.StartImageBuilderOutput, table
    startSoftwareDeploymentToImageBuilder: function(Client, types.StartSoftwareDeploymentToImageBuilderInput): types.StartSoftwareDeploymentToImageBuilderOutput, table
    stopAppBlockBuilder: function(Client, types.StopAppBlockBuilderInput): types.StopAppBlockBuilderOutput, table
    stopFleet: function(Client, types.StopFleetInput): types.StopFleetOutput, table
    stopImageBuilder: function(Client, types.StopImageBuilderInput): types.StopImageBuilderOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAppBlockBuilder: function(Client, types.UpdateAppBlockBuilderInput): types.UpdateAppBlockBuilderOutput, table
    updateApplication: function(Client, types.UpdateApplicationInput): types.UpdateApplicationOutput, table
    updateDirectoryConfig: function(Client, types.UpdateDirectoryConfigInput): types.UpdateDirectoryConfigOutput, table
    updateEntitlement: function(Client, types.UpdateEntitlementInput): types.UpdateEntitlementOutput, table
    updateFleet: function(Client, types.UpdateFleetInput): types.UpdateFleetOutput, table
    updateImagePermissions: function(Client, types.UpdateImagePermissionsInput): types.UpdateImagePermissionsOutput, table
    updateStack: function(Client, types.UpdateStackInput): types.UpdateStackOutput, table
    updateThemeForStack: function(Client, types.UpdateThemeForStackInput): types.UpdateThemeForStackOutput, table
end

local record M
    new: function(table): Client
end

return M
