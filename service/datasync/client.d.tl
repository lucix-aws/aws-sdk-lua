local types = require("datasync.types")

local record Client
    cancelTaskExecution: function(Client, types.CancelTaskExecutionInput): types.CancelTaskExecutionOutput, table
    createAgent: function(Client, types.CreateAgentInput): types.CreateAgentOutput, table
    createLocationAzureBlob: function(Client, types.CreateLocationAzureBlobInput): types.CreateLocationAzureBlobOutput, table
    createLocationEfs: function(Client, types.CreateLocationEfsInput): types.CreateLocationEfsOutput, table
    createLocationFsxLustre: function(Client, types.CreateLocationFsxLustreInput): types.CreateLocationFsxLustreOutput, table
    createLocationFsxOntap: function(Client, types.CreateLocationFsxOntapInput): types.CreateLocationFsxOntapOutput, table
    createLocationFsxOpenZfs: function(Client, types.CreateLocationFsxOpenZfsInput): types.CreateLocationFsxOpenZfsOutput, table
    createLocationFsxWindows: function(Client, types.CreateLocationFsxWindowsInput): types.CreateLocationFsxWindowsOutput, table
    createLocationHdfs: function(Client, types.CreateLocationHdfsInput): types.CreateLocationHdfsOutput, table
    createLocationNfs: function(Client, types.CreateLocationNfsInput): types.CreateLocationNfsOutput, table
    createLocationObjectStorage: function(Client, types.CreateLocationObjectStorageInput): types.CreateLocationObjectStorageOutput, table
    createLocationS3: function(Client, types.CreateLocationS3Input): types.CreateLocationS3Output, table
    createLocationSmb: function(Client, types.CreateLocationSmbInput): types.CreateLocationSmbOutput, table
    createTask: function(Client, types.CreateTaskInput): types.CreateTaskOutput, table
    deleteAgent: function(Client, types.DeleteAgentInput): types.DeleteAgentOutput, table
    deleteLocation: function(Client, types.DeleteLocationInput): types.DeleteLocationOutput, table
    deleteTask: function(Client, types.DeleteTaskInput): types.DeleteTaskOutput, table
    describeAgent: function(Client, types.DescribeAgentInput): types.DescribeAgentOutput, table
    describeLocationAzureBlob: function(Client, types.DescribeLocationAzureBlobInput): types.DescribeLocationAzureBlobOutput, table
    describeLocationEfs: function(Client, types.DescribeLocationEfsInput): types.DescribeLocationEfsOutput, table
    describeLocationFsxLustre: function(Client, types.DescribeLocationFsxLustreInput): types.DescribeLocationFsxLustreOutput, table
    describeLocationFsxOntap: function(Client, types.DescribeLocationFsxOntapInput): types.DescribeLocationFsxOntapOutput, table
    describeLocationFsxOpenZfs: function(Client, types.DescribeLocationFsxOpenZfsInput): types.DescribeLocationFsxOpenZfsOutput, table
    describeLocationFsxWindows: function(Client, types.DescribeLocationFsxWindowsInput): types.DescribeLocationFsxWindowsOutput, table
    describeLocationHdfs: function(Client, types.DescribeLocationHdfsInput): types.DescribeLocationHdfsOutput, table
    describeLocationNfs: function(Client, types.DescribeLocationNfsInput): types.DescribeLocationNfsOutput, table
    describeLocationObjectStorage: function(Client, types.DescribeLocationObjectStorageInput): types.DescribeLocationObjectStorageOutput, table
    describeLocationS3: function(Client, types.DescribeLocationS3Input): types.DescribeLocationS3Output, table
    describeLocationSmb: function(Client, types.DescribeLocationSmbInput): types.DescribeLocationSmbOutput, table
    describeTask: function(Client, types.DescribeTaskInput): types.DescribeTaskOutput, table
    describeTaskExecution: function(Client, types.DescribeTaskExecutionInput): types.DescribeTaskExecutionOutput, table
    listAgents: function(Client, types.ListAgentsInput): types.ListAgentsOutput, table
    listLocations: function(Client, types.ListLocationsInput): types.ListLocationsOutput, table
    listTagsForResource: function(Client, types.ListTagsForResourceInput): types.ListTagsForResourceOutput, table
    listTaskExecutions: function(Client, types.ListTaskExecutionsInput): types.ListTaskExecutionsOutput, table
    listTasks: function(Client, types.ListTasksInput): types.ListTasksOutput, table
    startTaskExecution: function(Client, types.StartTaskExecutionInput): types.StartTaskExecutionOutput, table
    tagResource: function(Client, types.TagResourceInput): types.TagResourceOutput, table
    untagResource: function(Client, types.UntagResourceInput): types.UntagResourceOutput, table
    updateAgent: function(Client, types.UpdateAgentInput): types.UpdateAgentOutput, table
    updateLocationAzureBlob: function(Client, types.UpdateLocationAzureBlobInput): types.UpdateLocationAzureBlobOutput, table
    updateLocationEfs: function(Client, types.UpdateLocationEfsInput): types.UpdateLocationEfsOutput, table
    updateLocationFsxLustre: function(Client, types.UpdateLocationFsxLustreInput): types.UpdateLocationFsxLustreOutput, table
    updateLocationFsxOntap: function(Client, types.UpdateLocationFsxOntapInput): types.UpdateLocationFsxOntapOutput, table
    updateLocationFsxOpenZfs: function(Client, types.UpdateLocationFsxOpenZfsInput): types.UpdateLocationFsxOpenZfsOutput, table
    updateLocationFsxWindows: function(Client, types.UpdateLocationFsxWindowsInput): types.UpdateLocationFsxWindowsOutput, table
    updateLocationHdfs: function(Client, types.UpdateLocationHdfsInput): types.UpdateLocationHdfsOutput, table
    updateLocationNfs: function(Client, types.UpdateLocationNfsInput): types.UpdateLocationNfsOutput, table
    updateLocationObjectStorage: function(Client, types.UpdateLocationObjectStorageInput): types.UpdateLocationObjectStorageOutput, table
    updateLocationS3: function(Client, types.UpdateLocationS3Input): types.UpdateLocationS3Output, table
    updateLocationSmb: function(Client, types.UpdateLocationSmbInput): types.UpdateLocationSmbOutput, table
    updateTask: function(Client, types.UpdateTaskInput): types.UpdateTaskOutput, table
    updateTaskExecution: function(Client, types.UpdateTaskExecutionInput): types.UpdateTaskExecutionOutput, table
end

local record M
    new: function(table): Client
end

return M
