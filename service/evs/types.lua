local M = {}

M.VlanState = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    DELETING = "DELETING",
    DELETED = "DELETED",
    CREATE_FAILED = "CREATE_FAILED",
}

M.ValidationExceptionReason = {
    UNKNOWN_OPERATION = "unknownOperation",
    CANNOT_PARSE = "cannotParse",
    FIELD_VALIDATION_FAILED = "fieldValidationFailed",
    OTHER = "other",
}

M.EntitlementType = {
    WINDOWS_SERVER = "WINDOWS_SERVER",
}

M.EntitlementStatus = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    DELETED = "DELETED",
    AT_RISK = "AT_RISK",
    ENTITLEMENT_REMOVED = "ENTITLEMENT_REMOVED",
    CREATE_FAILED = "CREATE_FAILED",
}

M.InstanceType = {
    I4I_METAL = "i4i.metal",
    I7I_METAL_24XL = "i7i.metal-24xl",
}

M.VcfVersion = {
    VCF_5_2_1 = "VCF-5.2.1",
    VCF_5_2_2 = "VCF-5.2.2",
}

M.CheckResult = {
    PASSED = "PASSED",
    FAILED = "FAILED",
    UNKNOWN = "UNKNOWN",
}

M.CheckType = {
    KEY_REUSE = "KEY_REUSE",
    KEY_COVERAGE = "KEY_COVERAGE",
    REACHABILITY = "REACHABILITY",
    HOST_COUNT = "HOST_COUNT",
    VCENTER_REACHABILITY = "VCENTER_REACHABILITY",
    VCENTER_VM_SYNC = "VCENTER_VM_SYNC",
    VCENTER_VM_EVENT = "VCENTER_VM_EVENT",
}

M.EnvironmentState = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    DELETING = "DELETING",
    DELETED = "DELETED",
    CREATE_FAILED = "CREATE_FAILED",
}

M.ConnectorType = {
    VCENTER = "VCENTER",
}

M.ConnectorState = {
    CREATING = "CREATING",
    CREATE_FAILED = "CREATE_FAILED",
    ACTIVE = "ACTIVE",
    UPDATING = "UPDATING",
    UPDATE_FAILED = "UPDATE_FAILED",
    DELETING = "DELETING",
    DELETED = "DELETED",
}

M.HostState = {
    CREATING = "CREATING",
    CREATED = "CREATED",
    UPDATING = "UPDATING",
    DELETING = "DELETING",
    DELETED = "DELETED",
    CREATE_FAILED = "CREATE_FAILED",
    UPDATE_FAILED = "UPDATE_FAILED",
}

return M
