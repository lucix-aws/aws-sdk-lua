local waiter = require("waiter")

local M = {}

--- Wait until BundleTaskComplete.
function M.wait_until_bundle_task_complete(client, input, options)
    return waiter.wait(client, "describeBundleTasks", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "BundleTasks[].State",
                        expected = "complete",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "BundleTasks[].State",
                        expected = "failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ConversionTaskCancelled.
function M.wait_until_conversion_task_cancelled(client, input, options)
    return waiter.wait(client, "describeConversionTasks", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ConversionTasks[].State",
                        expected = "cancelled",
                        comparator = "allStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ConversionTaskCompleted.
function M.wait_until_conversion_task_completed(client, input, options)
    return waiter.wait(client, "describeConversionTasks", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ConversionTasks[].State",
                        expected = "completed",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ConversionTasks[].State",
                        expected = "cancelled",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ConversionTasks[].State",
                        expected = "cancelling",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ConversionTaskDeleted.
function M.wait_until_conversion_task_deleted(client, input, options)
    return waiter.wait(client, "describeConversionTasks", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ConversionTasks[].State",
                        expected = "deleted",
                        comparator = "allStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until CustomerGatewayAvailable.
function M.wait_until_customer_gateway_available(client, input, options)
    return waiter.wait(client, "describeCustomerGateways", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "CustomerGateways[].State",
                        expected = "available",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "CustomerGateways[].State",
                        expected = "deleted",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "CustomerGateways[].State",
                        expected = "deleting",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ExportTaskCancelled.
function M.wait_until_export_task_cancelled(client, input, options)
    return waiter.wait(client, "describeExportTasks", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ExportTasks[].State",
                        expected = "cancelled",
                        comparator = "allStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ExportTaskCompleted.
function M.wait_until_export_task_completed(client, input, options)
    return waiter.wait(client, "describeExportTasks", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ExportTasks[].State",
                        expected = "completed",
                        comparator = "allStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ImageAvailable.
function M.wait_until_image_available(client, input, options)
    return waiter.wait(client, "describeImages", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Images[].State",
                        expected = "available",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Images[].State",
                        expected = "failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until ImageExists.
function M.wait_until_image_exists(client, input, options)
    return waiter.wait(client, "describeImages", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "length(Images[]) > `0`",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InvalidAMIID.NotFound",
                },
            },
        },
    }, options)
end

--- Wait until ImageUsageReportAvailable.
function M.wait_until_image_usage_report_available(client, input, options)
    return waiter.wait(client, "describeImageUsageReports", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ImageUsageReports[].State",
                        expected = "available",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ImageUsageReports[].State",
                        expected = "failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until InstanceExists.
function M.wait_until_instance_exists(client, input, options)
    return waiter.wait(client, "describeInstances", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "length(Reservations[]) > `0`",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InvalidInstanceID.NotFound",
                },
            },
        },
    }, options)
end

--- Wait until InstanceRunning.
function M.wait_until_instance_running(client, input, options)
    return waiter.wait(client, "describeInstances", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Reservations[].Instances[].State.Name",
                        expected = "running",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Reservations[].Instances[].State.Name",
                        expected = "shutting-down",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Reservations[].Instances[].State.Name",
                        expected = "terminated",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Reservations[].Instances[].State.Name",
                        expected = "stopping",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InvalidInstanceID.NotFound",
                },
            },
        },
    }, options)
end

--- Wait until InstanceStatusOk.
function M.wait_until_instance_status_ok(client, input, options)
    return waiter.wait(client, "describeInstanceStatus", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "InstanceStatuses[].InstanceStatus.Status",
                        expected = "ok",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InvalidInstanceID.NotFound",
                },
            },
        },
    }, options)
end

--- Wait until InstanceStopped.
function M.wait_until_instance_stopped(client, input, options)
    return waiter.wait(client, "describeInstances", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Reservations[].Instances[].State.Name",
                        expected = "stopped",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Reservations[].Instances[].State.Name",
                        expected = "pending",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Reservations[].Instances[].State.Name",
                        expected = "terminated",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until InstanceTerminated.
function M.wait_until_instance_terminated(client, input, options)
    return waiter.wait(client, "describeInstances", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Reservations[].Instances[].State.Name",
                        expected = "terminated",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Reservations[].Instances[].State.Name",
                        expected = "pending",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Reservations[].Instances[].State.Name",
                        expected = "stopping",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until InternetGatewayExists.
function M.wait_until_internet_gateway_exists(client, input, options)
    return waiter.wait(client, "describeInternetGateways", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "length(InternetGateways[].InternetGatewayId) > `0`",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InvalidInternetGateway.NotFound",
                },
            },
        },
    }, options)
end

--- Wait until KeyPairExists.
function M.wait_until_key_pair_exists(client, input, options)
    return waiter.wait(client, "describeKeyPairs", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "length(KeyPairs[].KeyName) > `0`",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InvalidKeyPair.NotFound",
                },
            },
        },
    }, options)
end

--- Wait until NatGatewayAvailable.
function M.wait_until_nat_gateway_available(client, input, options)
    return waiter.wait(client, "describeNatGateways", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "NatGateways[].State",
                        expected = "available",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "NatGateways[].State",
                        expected = "failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "NatGateways[].State",
                        expected = "deleting",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "NatGateways[].State",
                        expected = "deleted",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "NatGatewayNotFound",
                },
            },
        },
    }, options)
end

--- Wait until NatGatewayDeleted.
function M.wait_until_nat_gateway_deleted(client, input, options)
    return waiter.wait(client, "describeNatGateways", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "NatGateways[].State",
                        expected = "deleted",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "NatGatewayNotFound",
                },
            },
        },
    }, options)
end

--- Wait until NetworkInterfaceAvailable.
function M.wait_until_network_interface_available(client, input, options)
    return waiter.wait(client, "describeNetworkInterfaces", input, {
        min_delay = 20,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "NetworkInterfaces[].Status",
                        expected = "available",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    errorType = "InvalidNetworkInterfaceID.NotFound",
                },
            },
        },
    }, options)
end

--- Wait until PasswordDataAvailable.
function M.wait_until_password_data_available(client, input, options)
    return waiter.wait(client, "getPasswordData", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "length(PasswordData) > `0`",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until SecondaryNetworkCreateComplete.
function M.wait_until_secondary_network_create_complete(client, input, options)
    return waiter.wait(client, "describeSecondaryNetworks", input, {
        min_delay = 10,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "SecondaryNetworks[].State",
                        expected = "create-complete",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "SecondaryNetworks[].State",
                        expected = "create-failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InvalidSecondaryNetworkId.NotFound",
                },
            },
        },
    }, options)
end

--- Wait until SecondaryNetworkDeleteComplete.
function M.wait_until_secondary_network_delete_complete(client, input, options)
    return waiter.wait(client, "describeSecondaryNetworks", input, {
        min_delay = 10,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "SecondaryNetworks[].State",
                        expected = "delete-complete",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "SecondaryNetworks[].State",
                        expected = "delete-failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until SecondarySubnetCreateComplete.
function M.wait_until_secondary_subnet_create_complete(client, input, options)
    return waiter.wait(client, "describeSecondarySubnets", input, {
        min_delay = 10,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "SecondarySubnets[].State",
                        expected = "create-complete",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "SecondarySubnets[].State",
                        expected = "delete-failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InvalidSecondarySubnetId.NotFound",
                },
            },
        },
    }, options)
end

--- Wait until SecondarySubnetDeleteComplete.
function M.wait_until_secondary_subnet_delete_complete(client, input, options)
    return waiter.wait(client, "describeSecondarySubnets", input, {
        min_delay = 10,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "SecondarySubnets[].State",
                        expected = "delete-complete",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "SecondarySubnets[].State",
                        expected = "delete-failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until SecurityGroupExists.
function M.wait_until_security_group_exists(client, input, options)
    return waiter.wait(client, "describeSecurityGroups", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "length(SecurityGroups[].GroupId) > `0`",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InvalidGroup.NotFound",
                },
            },
        },
    }, options)
end

--- Wait until SecurityGroupVpcAssociationAssociated.
function M.wait_until_security_group_vpc_association_associated(client, input, options)
    return waiter.wait(client, "describeSecurityGroupVpcAssociations", input, {
        min_delay = 10,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "SecurityGroupVpcAssociations[].State",
                        expected = "associated",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "SecurityGroupVpcAssociations[].State",
                        expected = "associating",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "SecurityGroupVpcAssociations[].State",
                        expected = "association-failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until SecurityGroupVpcAssociationDisassociated.
function M.wait_until_security_group_vpc_association_disassociated(client, input, options)
    return waiter.wait(client, "describeSecurityGroupVpcAssociations", input, {
        min_delay = 10,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "SecurityGroupVpcAssociations[].State",
                        expected = "disassociated",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "SecurityGroupVpcAssociations[].State",
                        expected = "disassociating",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "SecurityGroupVpcAssociations[].State",
                        expected = "disassociation-failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "length(SecurityGroupVpcAssociations[]) == `0`",
                        expected = "true",
                        comparator = "booleanEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until SnapshotCompleted.
function M.wait_until_snapshot_completed(client, input, options)
    return waiter.wait(client, "describeSnapshots", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Snapshots[].State",
                        expected = "completed",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Snapshots[].State",
                        expected = "error",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until SnapshotImported.
function M.wait_until_snapshot_imported(client, input, options)
    return waiter.wait(client, "describeImportSnapshotTasks", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "ImportSnapshotTasks[].SnapshotTaskDetail.Status",
                        expected = "completed",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "ImportSnapshotTasks[].SnapshotTaskDetail.Status",
                        expected = "error",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until SpotInstanceRequestFulfilled.
function M.wait_until_spot_instance_request_fulfilled(client, input, options)
    return waiter.wait(client, "describeSpotInstanceRequests", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "SpotInstanceRequests[].Status.Code",
                        expected = "fulfilled",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    output = {
                        path = "SpotInstanceRequests[].Status.Code",
                        expected = "request-canceled-and-instance-running",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "SpotInstanceRequests[].Status.Code",
                        expected = "schedule-expired",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "SpotInstanceRequests[].Status.Code",
                        expected = "canceled-before-fulfillment",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "SpotInstanceRequests[].Status.Code",
                        expected = "bad-parameters",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "SpotInstanceRequests[].Status.Code",
                        expected = "system-error",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InvalidSpotInstanceRequestID.NotFound",
                },
            },
        },
    }, options)
end

--- Wait until StoreImageTaskComplete.
function M.wait_until_store_image_task_complete(client, input, options)
    return waiter.wait(client, "describeStoreImageTasks", input, {
        min_delay = 5,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "StoreImageTaskResults[].StoreTaskState",
                        expected = "Completed",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "StoreImageTaskResults[].StoreTaskState",
                        expected = "Failed",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "retry",
                matcher = {
                    output = {
                        path = "StoreImageTaskResults[].StoreTaskState",
                        expected = "InProgress",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until SubnetAvailable.
function M.wait_until_subnet_available(client, input, options)
    return waiter.wait(client, "describeSubnets", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Subnets[].State",
                        expected = "available",
                        comparator = "allStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until SystemStatusOk.
function M.wait_until_system_status_ok(client, input, options)
    return waiter.wait(client, "describeInstanceStatus", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "InstanceStatuses[].SystemStatus.Status",
                        expected = "ok",
                        comparator = "allStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until VolumeAvailable.
function M.wait_until_volume_available(client, input, options)
    return waiter.wait(client, "describeVolumes", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Volumes[].State",
                        expected = "available",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Volumes[].State",
                        expected = "deleted",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until VolumeDeleted.
function M.wait_until_volume_deleted(client, input, options)
    return waiter.wait(client, "describeVolumes", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Volumes[].State",
                        expected = "deleted",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "InvalidVolume.NotFound",
                },
            },
        },
    }, options)
end

--- Wait until VolumeInUse.
function M.wait_until_volume_in_use(client, input, options)
    return waiter.wait(client, "describeVolumes", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Volumes[].State",
                        expected = "in-use",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "Volumes[].State",
                        expected = "deleted",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until VpcAvailable.
function M.wait_until_vpc_available(client, input, options)
    return waiter.wait(client, "describeVpcs", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "Vpcs[].State",
                        expected = "available",
                        comparator = "allStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until VpcExists.
function M.wait_until_vpc_exists(client, input, options)
    return waiter.wait(client, "describeVpcs", input, {
        min_delay = 1,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    success = true,
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InvalidVpcID.NotFound",
                },
            },
        },
    }, options)
end

--- Wait until VpcPeeringConnectionDeleted.
function M.wait_until_vpc_peering_connection_deleted(client, input, options)
    return waiter.wait(client, "describeVpcPeeringConnections", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "VpcPeeringConnections[].Status.Code",
                        expected = "deleted",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "success",
                matcher = {
                    errorType = "InvalidVpcPeeringConnectionID.NotFound",
                },
            },
        },
    }, options)
end

--- Wait until VpcPeeringConnectionExists.
function M.wait_until_vpc_peering_connection_exists(client, input, options)
    return waiter.wait(client, "describeVpcPeeringConnections", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    success = true,
                },
            },
            {
                state = "retry",
                matcher = {
                    errorType = "InvalidVpcPeeringConnectionID.NotFound",
                },
            },
        },
    }, options)
end

--- Wait until VpnConnectionAvailable.
function M.wait_until_vpn_connection_available(client, input, options)
    return waiter.wait(client, "describeVpnConnections", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "VpnConnections[].State",
                        expected = "available",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "VpnConnections[].State",
                        expected = "deleting",
                        comparator = "anyStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "VpnConnections[].State",
                        expected = "deleted",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

--- Wait until VpnConnectionDeleted.
function M.wait_until_vpn_connection_deleted(client, input, options)
    return waiter.wait(client, "describeVpnConnections", input, {
        min_delay = 15,
        max_delay = 120,
        acceptors = {
            {
                state = "success",
                matcher = {
                    output = {
                        path = "VpnConnections[].State",
                        expected = "deleted",
                        comparator = "allStringEquals",
                    },
                },
            },
            {
                state = "failure",
                matcher = {
                    output = {
                        path = "VpnConnections[].State",
                        expected = "pending",
                        comparator = "anyStringEquals",
                    },
                },
            },
        },
    }, options)
end

return M
