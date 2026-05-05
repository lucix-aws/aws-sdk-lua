local id = require("smithy.shape_id")
local schema = require("smithy.schema")
local prelude = require("smithy.prelude")
local traits = require("smithy.traits")

local _N = "com.amazonaws.route53"

local M = {}

M.AccountLimit = schema.new({
    id = id.from(_N, "AccountLimit"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "AccountLimit", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "AccountLimit", "Value"),
            type = "long",
            name = "Value",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ActivateKeySigningKeyInput = schema.new({
    id = id.from(_N, "ActivateKeySigningKeyRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "ActivateKeySigningKeyInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "ActivateKeySigningKeyInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ChangeInfo = schema.new({
    id = id.from(_N, "ChangeInfo"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ChangeInfo", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "ChangeInfo", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SubmittedAt = schema.new({
            id = id.from(_N, "ChangeInfo", "SubmittedAt"),
            type = "timestamp",
            name = "SubmittedAt",
            target_id = prelude.Timestamp.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "ChangeInfo", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
    },
})

M.ActivateKeySigningKeyOutput = schema.new({
    id = id.from(_N, "ActivateKeySigningKeyResponse"),
    type = "structure",
    members = {
        ChangeInfo = schema.new({
            id = id.from(_N, "ActivateKeySigningKeyOutput", "ChangeInfo"),
            type = "structure",
            name = "ChangeInfo",
            target_id = id.from(_N, "ChangeInfo"),
            target = M.ChangeInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConcurrentModification = schema.new({
    id = id.from(_N, "ConcurrentModification"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConcurrentModification", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidInput = schema.new({
    id = id.from(_N, "InvalidInput"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidInput", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidKeySigningKeyStatus = schema.new({
    id = id.from(_N, "InvalidKeySigningKeyStatus"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidKeySigningKeyStatus", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidKMSArn = schema.new({
    id = id.from(_N, "InvalidKMSArn"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidKMSArn", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidSigningStatus = schema.new({
    id = id.from(_N, "InvalidSigningStatus"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidSigningStatus", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchKeySigningKey = schema.new({
    id = id.from(_N, "NoSuchKeySigningKey"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NoSuchKeySigningKey", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.AlarmIdentifier = schema.new({
    id = id.from(_N, "AlarmIdentifier"),
    type = "structure",
    members = {
        Region = schema.new({
            id = id.from(_N, "AlarmIdentifier", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "AlarmIdentifier", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.AliasTarget = schema.new({
    id = id.from(_N, "AliasTarget"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "AliasTarget", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DNSName = schema.new({
            id = id.from(_N, "AliasTarget", "DNSName"),
            type = "string",
            name = "DNSName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        EvaluateTargetHealth = schema.new({
            id = id.from(_N, "AliasTarget", "EvaluateTargetHealth"),
            type = "boolean",
            name = "EvaluateTargetHealth",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.VPC = schema.new({
    id = id.from(_N, "VPC"),
    type = "structure",
    members = {
        VPCRegion = schema.new({
            id = id.from(_N, "VPC", "VPCRegion"),
            type = "string",
            name = "VPCRegion",
            target_id = prelude.String.id,
        }),
        VPCId = schema.new({
            id = id.from(_N, "VPC", "VPCId"),
            type = "string",
            name = "VPCId",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateVPCWithHostedZoneInput = schema.new({
    id = id.from(_N, "AssociateVPCWithHostedZoneRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "AssociateVPCWithHostedZoneInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VPC = schema.new({
            id = id.from(_N, "AssociateVPCWithHostedZoneInput", "VPC"),
            type = "structure",
            name = "VPC",
            target_id = id.from(_N, "VPC"),
            target = M.VPC,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "AssociateVPCWithHostedZoneInput", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
    },
})

M.AssociateVPCWithHostedZoneOutput = schema.new({
    id = id.from(_N, "AssociateVPCWithHostedZoneResponse"),
    type = "structure",
    members = {
        ChangeInfo = schema.new({
            id = id.from(_N, "AssociateVPCWithHostedZoneOutput", "ChangeInfo"),
            type = "structure",
            name = "ChangeInfo",
            target_id = id.from(_N, "ChangeInfo"),
            target = M.ChangeInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConflictingDomainExists = schema.new({
    id = id.from(_N, "ConflictingDomainExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictingDomainExists", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidVPCId = schema.new({
    id = id.from(_N, "InvalidVPCId"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidVPCId", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.LimitsExceeded = schema.new({
    id = id.from(_N, "LimitsExceeded"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "LimitsExceeded", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchHostedZone = schema.new({
    id = id.from(_N, "NoSuchHostedZone"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NoSuchHostedZone", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NotAuthorizedException = schema.new({
    id = id.from(_N, "NotAuthorizedException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NotAuthorizedException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PriorRequestNotComplete = schema.new({
    id = id.from(_N, "PriorRequestNotComplete"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PriorRequestNotComplete", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.PublicZoneVPCAssociation = schema.new({
    id = id.from(_N, "PublicZoneVPCAssociation"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "PublicZoneVPCAssociation", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CidrCollectionChange = schema.new({
    id = id.from(_N, "CidrCollectionChange"),
    type = "structure",
    members = {
        LocationName = schema.new({
            id = id.from(_N, "CidrCollectionChange", "LocationName"),
            type = "string",
            name = "LocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Action = schema.new({
            id = id.from(_N, "CidrCollectionChange", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CidrList = schema.new({
            id = id.from(_N, "CidrCollectionChange", "CidrList"),
            type = "list",
            name = "CidrList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Cidr" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ChangeCidrCollectionInput = schema.new({
    id = id.from(_N, "ChangeCidrCollectionRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ChangeCidrCollectionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        CollectionVersion = schema.new({
            id = id.from(_N, "ChangeCidrCollectionInput", "CollectionVersion"),
            type = "long",
            name = "CollectionVersion",
            target_id = prelude.Long.id,
        }),
        Changes = schema.new({
            id = id.from(_N, "ChangeCidrCollectionInput", "Changes"),
            type = "list",
            name = "Changes",
            target_id = prelude.Document.id,
            list_member = M.CidrCollectionChange,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ChangeCidrCollectionOutput = schema.new({
    id = id.from(_N, "ChangeCidrCollectionResponse"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ChangeCidrCollectionOutput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CidrBlockInUseException = schema.new({
    id = id.from(_N, "CidrBlockInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CidrBlockInUseException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CidrCollectionVersionMismatchException = schema.new({
    id = id.from(_N, "CidrCollectionVersionMismatchException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CidrCollectionVersionMismatchException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchCidrCollectionException = schema.new({
    id = id.from(_N, "NoSuchCidrCollectionException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchCidrCollectionException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CidrRoutingConfig = schema.new({
    id = id.from(_N, "CidrRoutingConfig"),
    type = "structure",
    members = {
        CollectionId = schema.new({
            id = id.from(_N, "CidrRoutingConfig", "CollectionId"),
            type = "string",
            name = "CollectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LocationName = schema.new({
            id = id.from(_N, "CidrRoutingConfig", "LocationName"),
            type = "string",
            name = "LocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GeoLocation = schema.new({
    id = id.from(_N, "GeoLocation"),
    type = "structure",
    members = {
        ContinentCode = schema.new({
            id = id.from(_N, "GeoLocation", "ContinentCode"),
            type = "string",
            name = "ContinentCode",
            target_id = prelude.String.id,
        }),
        CountryCode = schema.new({
            id = id.from(_N, "GeoLocation", "CountryCode"),
            type = "string",
            name = "CountryCode",
            target_id = prelude.String.id,
        }),
        SubdivisionCode = schema.new({
            id = id.from(_N, "GeoLocation", "SubdivisionCode"),
            type = "string",
            name = "SubdivisionCode",
            target_id = prelude.String.id,
        }),
    },
})

M.Coordinates = schema.new({
    id = id.from(_N, "Coordinates"),
    type = "structure",
    members = {
        Latitude = schema.new({
            id = id.from(_N, "Coordinates", "Latitude"),
            type = "string",
            name = "Latitude",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Longitude = schema.new({
            id = id.from(_N, "Coordinates", "Longitude"),
            type = "string",
            name = "Longitude",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GeoProximityLocation = schema.new({
    id = id.from(_N, "GeoProximityLocation"),
    type = "structure",
    members = {
        AWSRegion = schema.new({
            id = id.from(_N, "GeoProximityLocation", "AWSRegion"),
            type = "string",
            name = "AWSRegion",
            target_id = prelude.String.id,
        }),
        LocalZoneGroup = schema.new({
            id = id.from(_N, "GeoProximityLocation", "LocalZoneGroup"),
            type = "string",
            name = "LocalZoneGroup",
            target_id = prelude.String.id,
        }),
        Coordinates = schema.new({
            id = id.from(_N, "GeoProximityLocation", "Coordinates"),
            type = "structure",
            name = "Coordinates",
            target_id = id.from(_N, "Coordinates"),
            target = M.Coordinates,
        }),
        Bias = schema.new({
            id = id.from(_N, "GeoProximityLocation", "Bias"),
            type = "integer",
            name = "Bias",
            target_id = prelude.Integer.id,
        }),
    },
})

M.ResourceRecord = schema.new({
    id = id.from(_N, "ResourceRecord"),
    type = "structure",
    members = {
        Value = schema.new({
            id = id.from(_N, "ResourceRecord", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ResourceRecordSet = schema.new({
    id = id.from(_N, "ResourceRecordSet"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "ResourceRecordSet", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "ResourceRecordSet", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        SetIdentifier = schema.new({
            id = id.from(_N, "ResourceRecordSet", "SetIdentifier"),
            type = "string",
            name = "SetIdentifier",
            target_id = prelude.String.id,
        }),
        Weight = schema.new({
            id = id.from(_N, "ResourceRecordSet", "Weight"),
            type = "long",
            name = "Weight",
            target_id = prelude.Long.id,
        }),
        Region = schema.new({
            id = id.from(_N, "ResourceRecordSet", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
        GeoLocation = schema.new({
            id = id.from(_N, "ResourceRecordSet", "GeoLocation"),
            type = "structure",
            name = "GeoLocation",
            target_id = id.from(_N, "GeoLocation"),
            target = M.GeoLocation,
        }),
        Failover = schema.new({
            id = id.from(_N, "ResourceRecordSet", "Failover"),
            type = "string",
            name = "Failover",
            target_id = prelude.String.id,
        }),
        MultiValueAnswer = schema.new({
            id = id.from(_N, "ResourceRecordSet", "MultiValueAnswer"),
            type = "boolean",
            name = "MultiValueAnswer",
            target_id = prelude.Boolean.id,
        }),
        TTL = schema.new({
            id = id.from(_N, "ResourceRecordSet", "TTL"),
            type = "long",
            name = "TTL",
            target_id = prelude.Long.id,
        }),
        ResourceRecords = schema.new({
            id = id.from(_N, "ResourceRecordSet", "ResourceRecords"),
            type = "list",
            name = "ResourceRecords",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ResourceRecord, traits = { [traits.XML_NAME] = { name = "ResourceRecord" } } }),
        }),
        AliasTarget = schema.new({
            id = id.from(_N, "ResourceRecordSet", "AliasTarget"),
            type = "structure",
            name = "AliasTarget",
            target_id = id.from(_N, "AliasTarget"),
            target = M.AliasTarget,
        }),
        HealthCheckId = schema.new({
            id = id.from(_N, "ResourceRecordSet", "HealthCheckId"),
            type = "string",
            name = "HealthCheckId",
            target_id = prelude.String.id,
        }),
        TrafficPolicyInstanceId = schema.new({
            id = id.from(_N, "ResourceRecordSet", "TrafficPolicyInstanceId"),
            type = "string",
            name = "TrafficPolicyInstanceId",
            target_id = prelude.String.id,
        }),
        CidrRoutingConfig = schema.new({
            id = id.from(_N, "ResourceRecordSet", "CidrRoutingConfig"),
            type = "structure",
            name = "CidrRoutingConfig",
            target_id = id.from(_N, "CidrRoutingConfig"),
            target = M.CidrRoutingConfig,
        }),
        GeoProximityLocation = schema.new({
            id = id.from(_N, "ResourceRecordSet", "GeoProximityLocation"),
            type = "structure",
            name = "GeoProximityLocation",
            target_id = id.from(_N, "GeoProximityLocation"),
            target = M.GeoProximityLocation,
        }),
    },
})

M.Change = schema.new({
    id = id.from(_N, "Change"),
    type = "structure",
    members = {
        Action = schema.new({
            id = id.from(_N, "Change", "Action"),
            type = "string",
            name = "Action",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourceRecordSet = schema.new({
            id = id.from(_N, "Change", "ResourceRecordSet"),
            type = "structure",
            name = "ResourceRecordSet",
            target_id = id.from(_N, "ResourceRecordSet"),
            target = M.ResourceRecordSet,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ChangeBatch = schema.new({
    id = id.from(_N, "ChangeBatch"),
    type = "structure",
    members = {
        Comment = schema.new({
            id = id.from(_N, "ChangeBatch", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
        Changes = schema.new({
            id = id.from(_N, "ChangeBatch", "Changes"),
            type = "list",
            name = "Changes",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Change, traits = { [traits.XML_NAME] = { name = "Change" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ChangeResourceRecordSetsInput = schema.new({
    id = id.from(_N, "ChangeResourceRecordSetsRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "ChangeResourceRecordSetsInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ChangeBatch = schema.new({
            id = id.from(_N, "ChangeResourceRecordSetsInput", "ChangeBatch"),
            type = "structure",
            name = "ChangeBatch",
            target_id = id.from(_N, "ChangeBatch"),
            target = M.ChangeBatch,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ChangeResourceRecordSetsOutput = schema.new({
    id = id.from(_N, "ChangeResourceRecordSetsResponse"),
    type = "structure",
    members = {
        ChangeInfo = schema.new({
            id = id.from(_N, "ChangeResourceRecordSetsOutput", "ChangeInfo"),
            type = "structure",
            name = "ChangeInfo",
            target_id = id.from(_N, "ChangeInfo"),
            target = M.ChangeInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvalidChangeBatch = schema.new({
    id = id.from(_N, "InvalidChangeBatch"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        messages = schema.new({
            id = id.from(_N, "InvalidChangeBatch", "messages"),
            type = "list",
            name = "messages",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Message" } } }),
        }),
        message = schema.new({
            id = id.from(_N, "InvalidChangeBatch", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchHealthCheck = schema.new({
    id = id.from(_N, "NoSuchHealthCheck"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NoSuchHealthCheck", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.Tag = schema.new({
    id = id.from(_N, "Tag"),
    type = "structure",
    members = {
        Key = schema.new({
            id = id.from(_N, "Tag", "Key"),
            type = "string",
            name = "Key",
            target_id = prelude.String.id,
        }),
        Value = schema.new({
            id = id.from(_N, "Tag", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
        }),
    },
})

M.ChangeTagsForResourceInput = schema.new({
    id = id.from(_N, "ChangeTagsForResourceRequest"),
    type = "structure",
    members = {
        ResourceType = schema.new({
            id = id.from(_N, "ChangeTagsForResourceInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ChangeTagsForResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        AddTags = schema.new({
            id = id.from(_N, "ChangeTagsForResourceInput", "AddTags"),
            type = "list",
            name = "AddTags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
        RemoveTagKeys = schema.new({
            id = id.from(_N, "ChangeTagsForResourceInput", "RemoveTagKeys"),
            type = "list",
            name = "RemoveTagKeys",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Key" } } }),
        }),
    },
})

M.ChangeTagsForResourceOutput = schema.new({
    id = id.from(_N, "ChangeTagsForResourceResponse"),
    type = "structure",
})

M.ThrottlingException = schema.new({
    id = id.from(_N, "ThrottlingException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ThrottlingException", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CidrCollectionAlreadyExistsException = schema.new({
    id = id.from(_N, "CidrCollectionAlreadyExistsException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CidrCollectionAlreadyExistsException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateCidrCollectionInput = schema.new({
    id = id.from(_N, "CreateCidrCollectionRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateCidrCollectionInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CallerReference = schema.new({
            id = id.from(_N, "CreateCidrCollectionInput", "CallerReference"),
            type = "string",
            name = "CallerReference",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CidrCollection = schema.new({
    id = id.from(_N, "CidrCollection"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CidrCollection", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CidrCollection", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CidrCollection", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "CidrCollection", "Version"),
            type = "long",
            name = "Version",
            target_id = prelude.Long.id,
        }),
    },
})

M.CreateCidrCollectionOutput = schema.new({
    id = id.from(_N, "CreateCidrCollectionResponse"),
    type = "structure",
    members = {
        Collection = schema.new({
            id = id.from(_N, "CreateCidrCollectionOutput", "Collection"),
            type = "structure",
            name = "Collection",
            target_id = id.from(_N, "CidrCollection"),
            target = M.CidrCollection,
        }),
        Location = schema.new({
            id = id.from(_N, "CreateCidrCollectionOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
    },
})

M.HealthCheckConfig = schema.new({
    id = id.from(_N, "HealthCheckConfig"),
    type = "structure",
    members = {
        IPAddress = schema.new({
            id = id.from(_N, "HealthCheckConfig", "IPAddress"),
            type = "string",
            name = "IPAddress",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "HealthCheckConfig", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        Type = schema.new({
            id = id.from(_N, "HealthCheckConfig", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResourcePath = schema.new({
            id = id.from(_N, "HealthCheckConfig", "ResourcePath"),
            type = "string",
            name = "ResourcePath",
            target_id = prelude.String.id,
        }),
        FullyQualifiedDomainName = schema.new({
            id = id.from(_N, "HealthCheckConfig", "FullyQualifiedDomainName"),
            type = "string",
            name = "FullyQualifiedDomainName",
            target_id = prelude.String.id,
        }),
        SearchString = schema.new({
            id = id.from(_N, "HealthCheckConfig", "SearchString"),
            type = "string",
            name = "SearchString",
            target_id = prelude.String.id,
        }),
        RequestInterval = schema.new({
            id = id.from(_N, "HealthCheckConfig", "RequestInterval"),
            type = "integer",
            name = "RequestInterval",
            target_id = prelude.Integer.id,
        }),
        FailureThreshold = schema.new({
            id = id.from(_N, "HealthCheckConfig", "FailureThreshold"),
            type = "integer",
            name = "FailureThreshold",
            target_id = prelude.Integer.id,
        }),
        MeasureLatency = schema.new({
            id = id.from(_N, "HealthCheckConfig", "MeasureLatency"),
            type = "boolean",
            name = "MeasureLatency",
            target_id = prelude.Boolean.id,
        }),
        Inverted = schema.new({
            id = id.from(_N, "HealthCheckConfig", "Inverted"),
            type = "boolean",
            name = "Inverted",
            target_id = prelude.Boolean.id,
        }),
        Disabled = schema.new({
            id = id.from(_N, "HealthCheckConfig", "Disabled"),
            type = "boolean",
            name = "Disabled",
            target_id = prelude.Boolean.id,
        }),
        HealthThreshold = schema.new({
            id = id.from(_N, "HealthCheckConfig", "HealthThreshold"),
            type = "integer",
            name = "HealthThreshold",
            target_id = prelude.Integer.id,
        }),
        ChildHealthChecks = schema.new({
            id = id.from(_N, "HealthCheckConfig", "ChildHealthChecks"),
            type = "list",
            name = "ChildHealthChecks",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "ChildHealthCheck" } } }),
        }),
        EnableSNI = schema.new({
            id = id.from(_N, "HealthCheckConfig", "EnableSNI"),
            type = "boolean",
            name = "EnableSNI",
            target_id = prelude.Boolean.id,
        }),
        Regions = schema.new({
            id = id.from(_N, "HealthCheckConfig", "Regions"),
            type = "list",
            name = "Regions",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Region" } } }),
        }),
        AlarmIdentifier = schema.new({
            id = id.from(_N, "HealthCheckConfig", "AlarmIdentifier"),
            type = "structure",
            name = "AlarmIdentifier",
            target_id = id.from(_N, "AlarmIdentifier"),
            target = M.AlarmIdentifier,
        }),
        InsufficientDataHealthStatus = schema.new({
            id = id.from(_N, "HealthCheckConfig", "InsufficientDataHealthStatus"),
            type = "string",
            name = "InsufficientDataHealthStatus",
            target_id = prelude.String.id,
        }),
        RoutingControlArn = schema.new({
            id = id.from(_N, "HealthCheckConfig", "RoutingControlArn"),
            type = "string",
            name = "RoutingControlArn",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateHealthCheckInput = schema.new({
    id = id.from(_N, "CreateHealthCheckRequest"),
    type = "structure",
    members = {
        CallerReference = schema.new({
            id = id.from(_N, "CreateHealthCheckInput", "CallerReference"),
            type = "string",
            name = "CallerReference",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HealthCheckConfig = schema.new({
            id = id.from(_N, "CreateHealthCheckInput", "HealthCheckConfig"),
            type = "structure",
            name = "HealthCheckConfig",
            target_id = id.from(_N, "HealthCheckConfig"),
            target = M.HealthCheckConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.Dimension = schema.new({
    id = id.from(_N, "Dimension"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "Dimension", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "Dimension", "Value"),
            type = "string",
            name = "Value",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CloudWatchAlarmConfiguration = schema.new({
    id = id.from(_N, "CloudWatchAlarmConfiguration"),
    type = "structure",
    members = {
        EvaluationPeriods = schema.new({
            id = id.from(_N, "CloudWatchAlarmConfiguration", "EvaluationPeriods"),
            type = "integer",
            name = "EvaluationPeriods",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Threshold = schema.new({
            id = id.from(_N, "CloudWatchAlarmConfiguration", "Threshold"),
            type = "double",
            name = "Threshold",
            target_id = prelude.Double.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ComparisonOperator = schema.new({
            id = id.from(_N, "CloudWatchAlarmConfiguration", "ComparisonOperator"),
            type = "string",
            name = "ComparisonOperator",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Period = schema.new({
            id = id.from(_N, "CloudWatchAlarmConfiguration", "Period"),
            type = "integer",
            name = "Period",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MetricName = schema.new({
            id = id.from(_N, "CloudWatchAlarmConfiguration", "MetricName"),
            type = "string",
            name = "MetricName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Namespace = schema.new({
            id = id.from(_N, "CloudWatchAlarmConfiguration", "Namespace"),
            type = "string",
            name = "Namespace",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Statistic = schema.new({
            id = id.from(_N, "CloudWatchAlarmConfiguration", "Statistic"),
            type = "string",
            name = "Statistic",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Dimensions = schema.new({
            id = id.from(_N, "CloudWatchAlarmConfiguration", "Dimensions"),
            type = "list",
            name = "Dimensions",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Dimension, traits = { [traits.XML_NAME] = { name = "Dimension" } } }),
        }),
    },
})

M.LinkedService = schema.new({
    id = id.from(_N, "LinkedService"),
    type = "structure",
    members = {
        ServicePrincipal = schema.new({
            id = id.from(_N, "LinkedService", "ServicePrincipal"),
            type = "string",
            name = "ServicePrincipal",
            target_id = prelude.String.id,
        }),
        Description = schema.new({
            id = id.from(_N, "LinkedService", "Description"),
            type = "string",
            name = "Description",
            target_id = prelude.String.id,
        }),
    },
})

M.HealthCheck = schema.new({
    id = id.from(_N, "HealthCheck"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "HealthCheck", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CallerReference = schema.new({
            id = id.from(_N, "HealthCheck", "CallerReference"),
            type = "string",
            name = "CallerReference",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LinkedService = schema.new({
            id = id.from(_N, "HealthCheck", "LinkedService"),
            type = "structure",
            name = "LinkedService",
            target_id = id.from(_N, "LinkedService"),
            target = M.LinkedService,
        }),
        HealthCheckConfig = schema.new({
            id = id.from(_N, "HealthCheck", "HealthCheckConfig"),
            type = "structure",
            name = "HealthCheckConfig",
            target_id = id.from(_N, "HealthCheckConfig"),
            target = M.HealthCheckConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HealthCheckVersion = schema.new({
            id = id.from(_N, "HealthCheck", "HealthCheckVersion"),
            type = "long",
            name = "HealthCheckVersion",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CloudWatchAlarmConfiguration = schema.new({
            id = id.from(_N, "HealthCheck", "CloudWatchAlarmConfiguration"),
            type = "structure",
            name = "CloudWatchAlarmConfiguration",
            target_id = id.from(_N, "CloudWatchAlarmConfiguration"),
            target = M.CloudWatchAlarmConfiguration,
        }),
    },
})

M.CreateHealthCheckOutput = schema.new({
    id = id.from(_N, "CreateHealthCheckResponse"),
    type = "structure",
    members = {
        HealthCheck = schema.new({
            id = id.from(_N, "CreateHealthCheckOutput", "HealthCheck"),
            type = "structure",
            name = "HealthCheck",
            target_id = id.from(_N, "HealthCheck"),
            target = M.HealthCheck,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateHealthCheckOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
    },
})

M.HealthCheckAlreadyExists = schema.new({
    id = id.from(_N, "HealthCheckAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "HealthCheckAlreadyExists", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyHealthChecks = schema.new({
    id = id.from(_N, "TooManyHealthChecks"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyHealthChecks", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.HostedZoneConfig = schema.new({
    id = id.from(_N, "HostedZoneConfig"),
    type = "structure",
    members = {
        Comment = schema.new({
            id = id.from(_N, "HostedZoneConfig", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
        PrivateZone = schema.new({
            id = id.from(_N, "HostedZoneConfig", "PrivateZone"),
            type = "boolean",
            name = "PrivateZone",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.DEFAULT] = { value = false },
            },
        }),
    },
})

M.CreateHostedZoneInput = schema.new({
    id = id.from(_N, "CreateHostedZoneRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateHostedZoneInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VPC = schema.new({
            id = id.from(_N, "CreateHostedZoneInput", "VPC"),
            type = "structure",
            name = "VPC",
            target_id = id.from(_N, "VPC"),
            target = M.VPC,
        }),
        CallerReference = schema.new({
            id = id.from(_N, "CreateHostedZoneInput", "CallerReference"),
            type = "string",
            name = "CallerReference",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HostedZoneConfig = schema.new({
            id = id.from(_N, "CreateHostedZoneInput", "HostedZoneConfig"),
            type = "structure",
            name = "HostedZoneConfig",
            target_id = id.from(_N, "HostedZoneConfig"),
            target = M.HostedZoneConfig,
        }),
        DelegationSetId = schema.new({
            id = id.from(_N, "CreateHostedZoneInput", "DelegationSetId"),
            type = "string",
            name = "DelegationSetId",
            target_id = prelude.String.id,
        }),
    },
})

M.DelegationSet = schema.new({
    id = id.from(_N, "DelegationSet"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DelegationSet", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        CallerReference = schema.new({
            id = id.from(_N, "DelegationSet", "CallerReference"),
            type = "string",
            name = "CallerReference",
            target_id = prelude.String.id,
        }),
        NameServers = schema.new({
            id = id.from(_N, "DelegationSet", "NameServers"),
            type = "list",
            name = "NameServers",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "NameServer" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HostedZoneFailureReasons = schema.new({
    id = id.from(_N, "HostedZoneFailureReasons"),
    type = "structure",
    members = {
        AcceleratedRecovery = schema.new({
            id = id.from(_N, "HostedZoneFailureReasons", "AcceleratedRecovery"),
            type = "string",
            name = "AcceleratedRecovery",
            target_id = prelude.String.id,
        }),
    },
})

M.HostedZoneFeatures = schema.new({
    id = id.from(_N, "HostedZoneFeatures"),
    type = "structure",
    members = {
        AcceleratedRecoveryStatus = schema.new({
            id = id.from(_N, "HostedZoneFeatures", "AcceleratedRecoveryStatus"),
            type = "string",
            name = "AcceleratedRecoveryStatus",
            target_id = prelude.String.id,
        }),
        FailureReasons = schema.new({
            id = id.from(_N, "HostedZoneFeatures", "FailureReasons"),
            type = "structure",
            name = "FailureReasons",
            target_id = id.from(_N, "HostedZoneFailureReasons"),
            target = M.HostedZoneFailureReasons,
        }),
    },
})

M.HostedZone = schema.new({
    id = id.from(_N, "HostedZone"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "HostedZone", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "HostedZone", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CallerReference = schema.new({
            id = id.from(_N, "HostedZone", "CallerReference"),
            type = "string",
            name = "CallerReference",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Config = schema.new({
            id = id.from(_N, "HostedZone", "Config"),
            type = "structure",
            name = "Config",
            target_id = id.from(_N, "HostedZoneConfig"),
            target = M.HostedZoneConfig,
        }),
        ResourceRecordSetCount = schema.new({
            id = id.from(_N, "HostedZone", "ResourceRecordSetCount"),
            type = "long",
            name = "ResourceRecordSetCount",
            target_id = prelude.Long.id,
        }),
        LinkedService = schema.new({
            id = id.from(_N, "HostedZone", "LinkedService"),
            type = "structure",
            name = "LinkedService",
            target_id = id.from(_N, "LinkedService"),
            target = M.LinkedService,
        }),
        Features = schema.new({
            id = id.from(_N, "HostedZone", "Features"),
            type = "structure",
            name = "Features",
            target_id = id.from(_N, "HostedZoneFeatures"),
            target = M.HostedZoneFeatures,
        }),
    },
})

M.CreateHostedZoneOutput = schema.new({
    id = id.from(_N, "CreateHostedZoneResponse"),
    type = "structure",
    members = {
        HostedZone = schema.new({
            id = id.from(_N, "CreateHostedZoneOutput", "HostedZone"),
            type = "structure",
            name = "HostedZone",
            target_id = id.from(_N, "HostedZone"),
            target = M.HostedZone,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ChangeInfo = schema.new({
            id = id.from(_N, "CreateHostedZoneOutput", "ChangeInfo"),
            type = "structure",
            name = "ChangeInfo",
            target_id = id.from(_N, "ChangeInfo"),
            target = M.ChangeInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DelegationSet = schema.new({
            id = id.from(_N, "CreateHostedZoneOutput", "DelegationSet"),
            type = "structure",
            name = "DelegationSet",
            target_id = id.from(_N, "DelegationSet"),
            target = M.DelegationSet,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VPC = schema.new({
            id = id.from(_N, "CreateHostedZoneOutput", "VPC"),
            type = "structure",
            name = "VPC",
            target_id = id.from(_N, "VPC"),
            target = M.VPC,
        }),
        Location = schema.new({
            id = id.from(_N, "CreateHostedZoneOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
    },
})

M.DelegationSetNotAvailable = schema.new({
    id = id.from(_N, "DelegationSetNotAvailable"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DelegationSetNotAvailable", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DelegationSetNotReusable = schema.new({
    id = id.from(_N, "DelegationSetNotReusable"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DelegationSetNotReusable", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.HostedZoneAlreadyExists = schema.new({
    id = id.from(_N, "HostedZoneAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "HostedZoneAlreadyExists", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidDomainName = schema.new({
    id = id.from(_N, "InvalidDomainName"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidDomainName", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchDelegationSet = schema.new({
    id = id.from(_N, "NoSuchDelegationSet"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NoSuchDelegationSet", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyHostedZones = schema.new({
    id = id.from(_N, "TooManyHostedZones"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyHostedZones", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateKeySigningKeyInput = schema.new({
    id = id.from(_N, "CreateKeySigningKeyRequest"),
    type = "structure",
    members = {
        CallerReference = schema.new({
            id = id.from(_N, "CreateKeySigningKeyInput", "CallerReference"),
            type = "string",
            name = "CallerReference",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HostedZoneId = schema.new({
            id = id.from(_N, "CreateKeySigningKeyInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeyManagementServiceArn = schema.new({
            id = id.from(_N, "CreateKeySigningKeyInput", "KeyManagementServiceArn"),
            type = "string",
            name = "KeyManagementServiceArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateKeySigningKeyInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Status = schema.new({
            id = id.from(_N, "CreateKeySigningKeyInput", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KeySigningKey = schema.new({
    id = id.from(_N, "KeySigningKey"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "KeySigningKey", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        KmsArn = schema.new({
            id = id.from(_N, "KeySigningKey", "KmsArn"),
            type = "string",
            name = "KmsArn",
            target_id = prelude.String.id,
        }),
        Flag = schema.new({
            id = id.from(_N, "KeySigningKey", "Flag"),
            type = "integer",
            name = "Flag",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        SigningAlgorithmMnemonic = schema.new({
            id = id.from(_N, "KeySigningKey", "SigningAlgorithmMnemonic"),
            type = "string",
            name = "SigningAlgorithmMnemonic",
            target_id = prelude.String.id,
        }),
        SigningAlgorithmType = schema.new({
            id = id.from(_N, "KeySigningKey", "SigningAlgorithmType"),
            type = "integer",
            name = "SigningAlgorithmType",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        DigestAlgorithmMnemonic = schema.new({
            id = id.from(_N, "KeySigningKey", "DigestAlgorithmMnemonic"),
            type = "string",
            name = "DigestAlgorithmMnemonic",
            target_id = prelude.String.id,
        }),
        DigestAlgorithmType = schema.new({
            id = id.from(_N, "KeySigningKey", "DigestAlgorithmType"),
            type = "integer",
            name = "DigestAlgorithmType",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        KeyTag = schema.new({
            id = id.from(_N, "KeySigningKey", "KeyTag"),
            type = "integer",
            name = "KeyTag",
            target_id = prelude.Integer.id,
            traits = {
                [traits.DEFAULT] = { value = 0 },
            },
        }),
        DigestValue = schema.new({
            id = id.from(_N, "KeySigningKey", "DigestValue"),
            type = "string",
            name = "DigestValue",
            target_id = prelude.String.id,
        }),
        PublicKey = schema.new({
            id = id.from(_N, "KeySigningKey", "PublicKey"),
            type = "string",
            name = "PublicKey",
            target_id = prelude.String.id,
        }),
        DSRecord = schema.new({
            id = id.from(_N, "KeySigningKey", "DSRecord"),
            type = "string",
            name = "DSRecord",
            target_id = prelude.String.id,
        }),
        DNSKEYRecord = schema.new({
            id = id.from(_N, "KeySigningKey", "DNSKEYRecord"),
            type = "string",
            name = "DNSKEYRecord",
            target_id = prelude.String.id,
        }),
        Status = schema.new({
            id = id.from(_N, "KeySigningKey", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "KeySigningKey", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
        CreatedDate = schema.new({
            id = id.from(_N, "KeySigningKey", "CreatedDate"),
            type = "timestamp",
            name = "CreatedDate",
            target_id = prelude.Timestamp.id,
        }),
        LastModifiedDate = schema.new({
            id = id.from(_N, "KeySigningKey", "LastModifiedDate"),
            type = "timestamp",
            name = "LastModifiedDate",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.CreateKeySigningKeyOutput = schema.new({
    id = id.from(_N, "CreateKeySigningKeyResponse"),
    type = "structure",
    members = {
        ChangeInfo = schema.new({
            id = id.from(_N, "CreateKeySigningKeyOutput", "ChangeInfo"),
            type = "structure",
            name = "ChangeInfo",
            target_id = id.from(_N, "ChangeInfo"),
            target = M.ChangeInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeySigningKey = schema.new({
            id = id.from(_N, "CreateKeySigningKeyOutput", "KeySigningKey"),
            type = "structure",
            name = "KeySigningKey",
            target_id = id.from(_N, "KeySigningKey"),
            target = M.KeySigningKey,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateKeySigningKeyOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
    },
})

M.InvalidArgument = schema.new({
    id = id.from(_N, "InvalidArgument"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidArgument", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.InvalidKeySigningKeyName = schema.new({
    id = id.from(_N, "InvalidKeySigningKeyName"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidKeySigningKeyName", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.KeySigningKeyAlreadyExists = schema.new({
    id = id.from(_N, "KeySigningKeyAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "KeySigningKeyAlreadyExists", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyKeySigningKeys = schema.new({
    id = id.from(_N, "TooManyKeySigningKeys"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyKeySigningKeys", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateQueryLoggingConfigInput = schema.new({
    id = id.from(_N, "CreateQueryLoggingConfigRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "CreateQueryLoggingConfigInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CloudWatchLogsLogGroupArn = schema.new({
            id = id.from(_N, "CreateQueryLoggingConfigInput", "CloudWatchLogsLogGroupArn"),
            type = "string",
            name = "CloudWatchLogsLogGroupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.QueryLoggingConfig = schema.new({
    id = id.from(_N, "QueryLoggingConfig"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "QueryLoggingConfig", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HostedZoneId = schema.new({
            id = id.from(_N, "QueryLoggingConfig", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        CloudWatchLogsLogGroupArn = schema.new({
            id = id.from(_N, "QueryLoggingConfig", "CloudWatchLogsLogGroupArn"),
            type = "string",
            name = "CloudWatchLogsLogGroupArn",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateQueryLoggingConfigOutput = schema.new({
    id = id.from(_N, "CreateQueryLoggingConfigResponse"),
    type = "structure",
    members = {
        QueryLoggingConfig = schema.new({
            id = id.from(_N, "CreateQueryLoggingConfigOutput", "QueryLoggingConfig"),
            type = "structure",
            name = "QueryLoggingConfig",
            target_id = id.from(_N, "QueryLoggingConfig"),
            target = M.QueryLoggingConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateQueryLoggingConfigOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
    },
})

M.InsufficientCloudWatchLogsResourcePolicy = schema.new({
    id = id.from(_N, "InsufficientCloudWatchLogsResourcePolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InsufficientCloudWatchLogsResourcePolicy", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.NoSuchCloudWatchLogsLogGroup = schema.new({
    id = id.from(_N, "NoSuchCloudWatchLogsLogGroup"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NoSuchCloudWatchLogsLogGroup", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.QueryLoggingConfigAlreadyExists = schema.new({
    id = id.from(_N, "QueryLoggingConfigAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "QueryLoggingConfigAlreadyExists", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateReusableDelegationSetInput = schema.new({
    id = id.from(_N, "CreateReusableDelegationSetRequest"),
    type = "structure",
    members = {
        CallerReference = schema.new({
            id = id.from(_N, "CreateReusableDelegationSetInput", "CallerReference"),
            type = "string",
            name = "CallerReference",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HostedZoneId = schema.new({
            id = id.from(_N, "CreateReusableDelegationSetInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateReusableDelegationSetOutput = schema.new({
    id = id.from(_N, "CreateReusableDelegationSetResponse"),
    type = "structure",
    members = {
        DelegationSet = schema.new({
            id = id.from(_N, "CreateReusableDelegationSetOutput", "DelegationSet"),
            type = "structure",
            name = "DelegationSet",
            target_id = id.from(_N, "DelegationSet"),
            target = M.DelegationSet,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateReusableDelegationSetOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
    },
})

M.DelegationSetAlreadyCreated = schema.new({
    id = id.from(_N, "DelegationSetAlreadyCreated"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DelegationSetAlreadyCreated", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DelegationSetAlreadyReusable = schema.new({
    id = id.from(_N, "DelegationSetAlreadyReusable"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DelegationSetAlreadyReusable", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.HostedZoneNotFound = schema.new({
    id = id.from(_N, "HostedZoneNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "HostedZoneNotFound", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTrafficPolicyInput = schema.new({
    id = id.from(_N, "CreateTrafficPolicyRequest"),
    type = "structure",
    members = {
        Name = schema.new({
            id = id.from(_N, "CreateTrafficPolicyInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Document = schema.new({
            id = id.from(_N, "CreateTrafficPolicyInput", "Document"),
            type = "string",
            name = "Document",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "CreateTrafficPolicyInput", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
    },
})

M.TrafficPolicy = schema.new({
    id = id.from(_N, "TrafficPolicy"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "TrafficPolicy", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Version = schema.new({
            id = id.from(_N, "TrafficPolicy", "Version"),
            type = "integer",
            name = "Version",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "TrafficPolicy", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "TrafficPolicy", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Document = schema.new({
            id = id.from(_N, "TrafficPolicy", "Document"),
            type = "string",
            name = "Document",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "TrafficPolicy", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTrafficPolicyOutput = schema.new({
    id = id.from(_N, "CreateTrafficPolicyResponse"),
    type = "structure",
    members = {
        TrafficPolicy = schema.new({
            id = id.from(_N, "CreateTrafficPolicyOutput", "TrafficPolicy"),
            type = "structure",
            name = "TrafficPolicy",
            target_id = id.from(_N, "TrafficPolicy"),
            target = M.TrafficPolicy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateTrafficPolicyOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
    },
})

M.InvalidTrafficPolicyDocument = schema.new({
    id = id.from(_N, "InvalidTrafficPolicyDocument"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidTrafficPolicyDocument", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyTrafficPolicies = schema.new({
    id = id.from(_N, "TooManyTrafficPolicies"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyTrafficPolicies", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TrafficPolicyAlreadyExists = schema.new({
    id = id.from(_N, "TrafficPolicyAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TrafficPolicyAlreadyExists", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTrafficPolicyInstanceInput = schema.new({
    id = id.from(_N, "CreateTrafficPolicyInstanceRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "CreateTrafficPolicyInstanceInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "CreateTrafficPolicyInstanceInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TTL = schema.new({
            id = id.from(_N, "CreateTrafficPolicyInstanceInput", "TTL"),
            type = "long",
            name = "TTL",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrafficPolicyId = schema.new({
            id = id.from(_N, "CreateTrafficPolicyInstanceInput", "TrafficPolicyId"),
            type = "string",
            name = "TrafficPolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrafficPolicyVersion = schema.new({
            id = id.from(_N, "CreateTrafficPolicyInstanceInput", "TrafficPolicyVersion"),
            type = "integer",
            name = "TrafficPolicyVersion",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TrafficPolicyInstance = schema.new({
    id = id.from(_N, "TrafficPolicyInstance"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "TrafficPolicyInstance", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HostedZoneId = schema.new({
            id = id.from(_N, "TrafficPolicyInstance", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "TrafficPolicyInstance", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TTL = schema.new({
            id = id.from(_N, "TrafficPolicyInstance", "TTL"),
            type = "long",
            name = "TTL",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        State = schema.new({
            id = id.from(_N, "TrafficPolicyInstance", "State"),
            type = "string",
            name = "State",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Message = schema.new({
            id = id.from(_N, "TrafficPolicyInstance", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrafficPolicyId = schema.new({
            id = id.from(_N, "TrafficPolicyInstance", "TrafficPolicyId"),
            type = "string",
            name = "TrafficPolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrafficPolicyVersion = schema.new({
            id = id.from(_N, "TrafficPolicyInstance", "TrafficPolicyVersion"),
            type = "integer",
            name = "TrafficPolicyVersion",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrafficPolicyType = schema.new({
            id = id.from(_N, "TrafficPolicyInstance", "TrafficPolicyType"),
            type = "string",
            name = "TrafficPolicyType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateTrafficPolicyInstanceOutput = schema.new({
    id = id.from(_N, "CreateTrafficPolicyInstanceResponse"),
    type = "structure",
    members = {
        TrafficPolicyInstance = schema.new({
            id = id.from(_N, "CreateTrafficPolicyInstanceOutput", "TrafficPolicyInstance"),
            type = "structure",
            name = "TrafficPolicyInstance",
            target_id = id.from(_N, "TrafficPolicyInstance"),
            target = M.TrafficPolicyInstance,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateTrafficPolicyInstanceOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
    },
})

M.NoSuchTrafficPolicy = schema.new({
    id = id.from(_N, "NoSuchTrafficPolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NoSuchTrafficPolicy", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TooManyTrafficPolicyInstances = schema.new({
    id = id.from(_N, "TooManyTrafficPolicyInstances"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyTrafficPolicyInstances", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.TrafficPolicyInstanceAlreadyExists = schema.new({
    id = id.from(_N, "TrafficPolicyInstanceAlreadyExists"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TrafficPolicyInstanceAlreadyExists", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTrafficPolicyVersionInput = schema.new({
    id = id.from(_N, "CreateTrafficPolicyVersionRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "CreateTrafficPolicyVersionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Document = schema.new({
            id = id.from(_N, "CreateTrafficPolicyVersionInput", "Document"),
            type = "string",
            name = "Document",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "CreateTrafficPolicyVersionInput", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateTrafficPolicyVersionOutput = schema.new({
    id = id.from(_N, "CreateTrafficPolicyVersionResponse"),
    type = "structure",
    members = {
        TrafficPolicy = schema.new({
            id = id.from(_N, "CreateTrafficPolicyVersionOutput", "TrafficPolicy"),
            type = "structure",
            name = "TrafficPolicy",
            target_id = id.from(_N, "TrafficPolicy"),
            target = M.TrafficPolicy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Location = schema.new({
            id = id.from(_N, "CreateTrafficPolicyVersionOutput", "Location"),
            type = "string",
            name = "Location",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_HEADER] = { name = "Location" },
            },
        }),
    },
})

M.TooManyTrafficPolicyVersionsForCurrentPolicy = schema.new({
    id = id.from(_N, "TooManyTrafficPolicyVersionsForCurrentPolicy"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyTrafficPolicyVersionsForCurrentPolicy", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CreateVPCAssociationAuthorizationInput = schema.new({
    id = id.from(_N, "CreateVPCAssociationAuthorizationRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "CreateVPCAssociationAuthorizationInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VPC = schema.new({
            id = id.from(_N, "CreateVPCAssociationAuthorizationInput", "VPC"),
            type = "structure",
            name = "VPC",
            target_id = id.from(_N, "VPC"),
            target = M.VPC,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.CreateVPCAssociationAuthorizationOutput = schema.new({
    id = id.from(_N, "CreateVPCAssociationAuthorizationResponse"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "CreateVPCAssociationAuthorizationOutput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        VPC = schema.new({
            id = id.from(_N, "CreateVPCAssociationAuthorizationOutput", "VPC"),
            type = "structure",
            name = "VPC",
            target_id = id.from(_N, "VPC"),
            target = M.VPC,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TooManyVPCAssociationAuthorizations = schema.new({
    id = id.from(_N, "TooManyVPCAssociationAuthorizations"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TooManyVPCAssociationAuthorizations", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeactivateKeySigningKeyInput = schema.new({
    id = id.from(_N, "DeactivateKeySigningKeyRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "DeactivateKeySigningKeyInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "DeactivateKeySigningKeyInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeactivateKeySigningKeyOutput = schema.new({
    id = id.from(_N, "DeactivateKeySigningKeyResponse"),
    type = "structure",
    members = {
        ChangeInfo = schema.new({
            id = id.from(_N, "DeactivateKeySigningKeyOutput", "ChangeInfo"),
            type = "structure",
            name = "ChangeInfo",
            target_id = id.from(_N, "ChangeInfo"),
            target = M.ChangeInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.KeySigningKeyInParentDSRecord = schema.new({
    id = id.from(_N, "KeySigningKeyInParentDSRecord"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "KeySigningKeyInParentDSRecord", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.KeySigningKeyInUse = schema.new({
    id = id.from(_N, "KeySigningKeyInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "KeySigningKeyInUse", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.CidrCollectionInUseException = schema.new({
    id = id.from(_N, "CidrCollectionInUseException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "CidrCollectionInUseException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteCidrCollectionInput = schema.new({
    id = id.from(_N, "DeleteCidrCollectionRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteCidrCollectionInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteCidrCollectionOutput = schema.new({
    id = id.from(_N, "DeleteCidrCollectionResponse"),
    type = "structure",
})

M.DeleteHealthCheckInput = schema.new({
    id = id.from(_N, "DeleteHealthCheckRequest"),
    type = "structure",
    members = {
        HealthCheckId = schema.new({
            id = id.from(_N, "DeleteHealthCheckInput", "HealthCheckId"),
            type = "string",
            name = "HealthCheckId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteHealthCheckOutput = schema.new({
    id = id.from(_N, "DeleteHealthCheckResponse"),
    type = "structure",
})

M.HealthCheckInUse = schema.new({
    id = id.from(_N, "HealthCheckInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "HealthCheckInUse", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteHostedZoneInput = schema.new({
    id = id.from(_N, "DeleteHostedZoneRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteHostedZoneInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteHostedZoneOutput = schema.new({
    id = id.from(_N, "DeleteHostedZoneResponse"),
    type = "structure",
    members = {
        ChangeInfo = schema.new({
            id = id.from(_N, "DeleteHostedZoneOutput", "ChangeInfo"),
            type = "structure",
            name = "ChangeInfo",
            target_id = id.from(_N, "ChangeInfo"),
            target = M.ChangeInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HostedZoneNotEmpty = schema.new({
    id = id.from(_N, "HostedZoneNotEmpty"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "HostedZoneNotEmpty", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteKeySigningKeyInput = schema.new({
    id = id.from(_N, "DeleteKeySigningKeyRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "DeleteKeySigningKeyInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "DeleteKeySigningKeyInput", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteKeySigningKeyOutput = schema.new({
    id = id.from(_N, "DeleteKeySigningKeyResponse"),
    type = "structure",
    members = {
        ChangeInfo = schema.new({
            id = id.from(_N, "DeleteKeySigningKeyOutput", "ChangeInfo"),
            type = "structure",
            name = "ChangeInfo",
            target_id = id.from(_N, "ChangeInfo"),
            target = M.ChangeInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteQueryLoggingConfigInput = schema.new({
    id = id.from(_N, "DeleteQueryLoggingConfigRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteQueryLoggingConfigInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteQueryLoggingConfigOutput = schema.new({
    id = id.from(_N, "DeleteQueryLoggingConfigResponse"),
    type = "structure",
})

M.NoSuchQueryLoggingConfig = schema.new({
    id = id.from(_N, "NoSuchQueryLoggingConfig"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NoSuchQueryLoggingConfig", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DelegationSetInUse = schema.new({
    id = id.from(_N, "DelegationSetInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DelegationSetInUse", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteReusableDelegationSetInput = schema.new({
    id = id.from(_N, "DeleteReusableDelegationSetRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteReusableDelegationSetInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteReusableDelegationSetOutput = schema.new({
    id = id.from(_N, "DeleteReusableDelegationSetResponse"),
    type = "structure",
})

M.DeleteTrafficPolicyInput = schema.new({
    id = id.from(_N, "DeleteTrafficPolicyRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteTrafficPolicyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Version = schema.new({
            id = id.from(_N, "DeleteTrafficPolicyInput", "Version"),
            type = "integer",
            name = "Version",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteTrafficPolicyOutput = schema.new({
    id = id.from(_N, "DeleteTrafficPolicyResponse"),
    type = "structure",
})

M.TrafficPolicyInUse = schema.new({
    id = id.from(_N, "TrafficPolicyInUse"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "TrafficPolicyInUse", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteTrafficPolicyInstanceInput = schema.new({
    id = id.from(_N, "DeleteTrafficPolicyInstanceRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "DeleteTrafficPolicyInstanceInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DeleteTrafficPolicyInstanceOutput = schema.new({
    id = id.from(_N, "DeleteTrafficPolicyInstanceResponse"),
    type = "structure",
})

M.NoSuchTrafficPolicyInstance = schema.new({
    id = id.from(_N, "NoSuchTrafficPolicyInstance"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NoSuchTrafficPolicyInstance", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DeleteVPCAssociationAuthorizationInput = schema.new({
    id = id.from(_N, "DeleteVPCAssociationAuthorizationRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "DeleteVPCAssociationAuthorizationInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VPC = schema.new({
            id = id.from(_N, "DeleteVPCAssociationAuthorizationInput", "VPC"),
            type = "structure",
            name = "VPC",
            target_id = id.from(_N, "VPC"),
            target = M.VPC,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DeleteVPCAssociationAuthorizationOutput = schema.new({
    id = id.from(_N, "DeleteVPCAssociationAuthorizationResponse"),
    type = "structure",
})

M.VPCAssociationAuthorizationNotFound = schema.new({
    id = id.from(_N, "VPCAssociationAuthorizationNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "VPCAssociationAuthorizationNotFound", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DisableHostedZoneDNSSECInput = schema.new({
    id = id.from(_N, "DisableHostedZoneDNSSECRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "DisableHostedZoneDNSSECInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DisableHostedZoneDNSSECOutput = schema.new({
    id = id.from(_N, "DisableHostedZoneDNSSECResponse"),
    type = "structure",
    members = {
        ChangeInfo = schema.new({
            id = id.from(_N, "DisableHostedZoneDNSSECOutput", "ChangeInfo"),
            type = "structure",
            name = "ChangeInfo",
            target_id = id.from(_N, "ChangeInfo"),
            target = M.ChangeInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.DNSSECNotFound = schema.new({
    id = id.from(_N, "DNSSECNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "DNSSECNotFound", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateVPCFromHostedZoneInput = schema.new({
    id = id.from(_N, "DisassociateVPCFromHostedZoneRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "DisassociateVPCFromHostedZoneInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        VPC = schema.new({
            id = id.from(_N, "DisassociateVPCFromHostedZoneInput", "VPC"),
            type = "structure",
            name = "VPC",
            target_id = id.from(_N, "VPC"),
            target = M.VPC,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "DisassociateVPCFromHostedZoneInput", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
    },
})

M.DisassociateVPCFromHostedZoneOutput = schema.new({
    id = id.from(_N, "DisassociateVPCFromHostedZoneResponse"),
    type = "structure",
    members = {
        ChangeInfo = schema.new({
            id = id.from(_N, "DisassociateVPCFromHostedZoneOutput", "ChangeInfo"),
            type = "structure",
            name = "ChangeInfo",
            target_id = id.from(_N, "ChangeInfo"),
            target = M.ChangeInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.LastVPCAssociation = schema.new({
    id = id.from(_N, "LastVPCAssociation"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "LastVPCAssociation", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.VPCAssociationNotFound = schema.new({
    id = id.from(_N, "VPCAssociationNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "VPCAssociationNotFound", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.EnableHostedZoneDNSSECInput = schema.new({
    id = id.from(_N, "EnableHostedZoneDNSSECRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "EnableHostedZoneDNSSECInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.EnableHostedZoneDNSSECOutput = schema.new({
    id = id.from(_N, "EnableHostedZoneDNSSECResponse"),
    type = "structure",
    members = {
        ChangeInfo = schema.new({
            id = id.from(_N, "EnableHostedZoneDNSSECOutput", "ChangeInfo"),
            type = "structure",
            name = "ChangeInfo",
            target_id = id.from(_N, "ChangeInfo"),
            target = M.ChangeInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HostedZonePartiallyDelegated = schema.new({
    id = id.from(_N, "HostedZonePartiallyDelegated"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "HostedZonePartiallyDelegated", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.KeySigningKeyWithActiveStatusNotFound = schema.new({
    id = id.from(_N, "KeySigningKeyWithActiveStatusNotFound"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "KeySigningKeyWithActiveStatusNotFound", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetAccountLimitInput = schema.new({
    id = id.from(_N, "GetAccountLimitRequest"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "GetAccountLimitInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetAccountLimitOutput = schema.new({
    id = id.from(_N, "GetAccountLimitResponse"),
    type = "structure",
    members = {
        Limit = schema.new({
            id = id.from(_N, "GetAccountLimitOutput", "Limit"),
            type = "structure",
            name = "Limit",
            target_id = id.from(_N, "AccountLimit"),
            target = M.AccountLimit,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Count = schema.new({
            id = id.from(_N, "GetAccountLimitOutput", "Count"),
            type = "long",
            name = "Count",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.GetChangeInput = schema.new({
    id = id.from(_N, "GetChangeRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetChangeInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetChangeOutput = schema.new({
    id = id.from(_N, "GetChangeResponse"),
    type = "structure",
    members = {
        ChangeInfo = schema.new({
            id = id.from(_N, "GetChangeOutput", "ChangeInfo"),
            type = "structure",
            name = "ChangeInfo",
            target_id = id.from(_N, "ChangeInfo"),
            target = M.ChangeInfo,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NoSuchChange = schema.new({
    id = id.from(_N, "NoSuchChange"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NoSuchChange", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetCheckerIpRangesInput = schema.new({
    id = id.from(_N, "GetCheckerIpRangesRequest"),
    type = "structure",
})

M.GetCheckerIpRangesOutput = schema.new({
    id = id.from(_N, "GetCheckerIpRangesResponse"),
    type = "structure",
    members = {
        CheckerIpRanges = schema.new({
            id = id.from(_N, "GetCheckerIpRangesOutput", "CheckerIpRanges"),
            type = "list",
            name = "CheckerIpRanges",
            target_id = prelude.Document.id,
            list_member = prelude.String,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetDNSSECInput = schema.new({
    id = id.from(_N, "GetDNSSECRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "GetDNSSECInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.DNSSECStatus = schema.new({
    id = id.from(_N, "DNSSECStatus"),
    type = "structure",
    members = {
        ServeSignature = schema.new({
            id = id.from(_N, "DNSSECStatus", "ServeSignature"),
            type = "string",
            name = "ServeSignature",
            target_id = prelude.String.id,
        }),
        StatusMessage = schema.new({
            id = id.from(_N, "DNSSECStatus", "StatusMessage"),
            type = "string",
            name = "StatusMessage",
            target_id = prelude.String.id,
        }),
    },
})

M.GetDNSSECOutput = schema.new({
    id = id.from(_N, "GetDNSSECResponse"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "GetDNSSECOutput", "Status"),
            type = "structure",
            name = "Status",
            target_id = id.from(_N, "DNSSECStatus"),
            target = M.DNSSECStatus,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        KeySigningKeys = schema.new({
            id = id.from(_N, "GetDNSSECOutput", "KeySigningKeys"),
            type = "list",
            name = "KeySigningKeys",
            target_id = prelude.Document.id,
            list_member = M.KeySigningKey,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetGeoLocationInput = schema.new({
    id = id.from(_N, "GetGeoLocationRequest"),
    type = "structure",
    members = {
        ContinentCode = schema.new({
            id = id.from(_N, "GetGeoLocationInput", "ContinentCode"),
            type = "string",
            name = "ContinentCode",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "continentcode" },
            },
        }),
        CountryCode = schema.new({
            id = id.from(_N, "GetGeoLocationInput", "CountryCode"),
            type = "string",
            name = "CountryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "countrycode" },
            },
        }),
        SubdivisionCode = schema.new({
            id = id.from(_N, "GetGeoLocationInput", "SubdivisionCode"),
            type = "string",
            name = "SubdivisionCode",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "subdivisioncode" },
            },
        }),
    },
})

M.GeoLocationDetails = schema.new({
    id = id.from(_N, "GeoLocationDetails"),
    type = "structure",
    members = {
        ContinentCode = schema.new({
            id = id.from(_N, "GeoLocationDetails", "ContinentCode"),
            type = "string",
            name = "ContinentCode",
            target_id = prelude.String.id,
        }),
        ContinentName = schema.new({
            id = id.from(_N, "GeoLocationDetails", "ContinentName"),
            type = "string",
            name = "ContinentName",
            target_id = prelude.String.id,
        }),
        CountryCode = schema.new({
            id = id.from(_N, "GeoLocationDetails", "CountryCode"),
            type = "string",
            name = "CountryCode",
            target_id = prelude.String.id,
        }),
        CountryName = schema.new({
            id = id.from(_N, "GeoLocationDetails", "CountryName"),
            type = "string",
            name = "CountryName",
            target_id = prelude.String.id,
        }),
        SubdivisionCode = schema.new({
            id = id.from(_N, "GeoLocationDetails", "SubdivisionCode"),
            type = "string",
            name = "SubdivisionCode",
            target_id = prelude.String.id,
        }),
        SubdivisionName = schema.new({
            id = id.from(_N, "GeoLocationDetails", "SubdivisionName"),
            type = "string",
            name = "SubdivisionName",
            target_id = prelude.String.id,
        }),
    },
})

M.GetGeoLocationOutput = schema.new({
    id = id.from(_N, "GetGeoLocationResponse"),
    type = "structure",
    members = {
        GeoLocationDetails = schema.new({
            id = id.from(_N, "GetGeoLocationOutput", "GeoLocationDetails"),
            type = "structure",
            name = "GeoLocationDetails",
            target_id = id.from(_N, "GeoLocationDetails"),
            target = M.GeoLocationDetails,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.NoSuchGeoLocation = schema.new({
    id = id.from(_N, "NoSuchGeoLocation"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "NoSuchGeoLocation", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetHealthCheckInput = schema.new({
    id = id.from(_N, "GetHealthCheckRequest"),
    type = "structure",
    members = {
        HealthCheckId = schema.new({
            id = id.from(_N, "GetHealthCheckInput", "HealthCheckId"),
            type = "string",
            name = "HealthCheckId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetHealthCheckOutput = schema.new({
    id = id.from(_N, "GetHealthCheckResponse"),
    type = "structure",
    members = {
        HealthCheck = schema.new({
            id = id.from(_N, "GetHealthCheckOutput", "HealthCheck"),
            type = "structure",
            name = "HealthCheck",
            target_id = id.from(_N, "HealthCheck"),
            target = M.HealthCheck,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.IncompatibleVersion = schema.new({
    id = id.from(_N, "IncompatibleVersion"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "IncompatibleVersion", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetHealthCheckCountInput = schema.new({
    id = id.from(_N, "GetHealthCheckCountRequest"),
    type = "structure",
})

M.GetHealthCheckCountOutput = schema.new({
    id = id.from(_N, "GetHealthCheckCountResponse"),
    type = "structure",
    members = {
        HealthCheckCount = schema.new({
            id = id.from(_N, "GetHealthCheckCountOutput", "HealthCheckCount"),
            type = "long",
            name = "HealthCheckCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetHealthCheckLastFailureReasonInput = schema.new({
    id = id.from(_N, "GetHealthCheckLastFailureReasonRequest"),
    type = "structure",
    members = {
        HealthCheckId = schema.new({
            id = id.from(_N, "GetHealthCheckLastFailureReasonInput", "HealthCheckId"),
            type = "string",
            name = "HealthCheckId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.StatusReport = schema.new({
    id = id.from(_N, "StatusReport"),
    type = "structure",
    members = {
        Status = schema.new({
            id = id.from(_N, "StatusReport", "Status"),
            type = "string",
            name = "Status",
            target_id = prelude.String.id,
        }),
        CheckedTime = schema.new({
            id = id.from(_N, "StatusReport", "CheckedTime"),
            type = "timestamp",
            name = "CheckedTime",
            target_id = prelude.Timestamp.id,
        }),
    },
})

M.HealthCheckObservation = schema.new({
    id = id.from(_N, "HealthCheckObservation"),
    type = "structure",
    members = {
        Region = schema.new({
            id = id.from(_N, "HealthCheckObservation", "Region"),
            type = "string",
            name = "Region",
            target_id = prelude.String.id,
        }),
        IPAddress = schema.new({
            id = id.from(_N, "HealthCheckObservation", "IPAddress"),
            type = "string",
            name = "IPAddress",
            target_id = prelude.String.id,
        }),
        StatusReport = schema.new({
            id = id.from(_N, "HealthCheckObservation", "StatusReport"),
            type = "structure",
            name = "StatusReport",
            target_id = id.from(_N, "StatusReport"),
            target = M.StatusReport,
        }),
    },
})

M.GetHealthCheckLastFailureReasonOutput = schema.new({
    id = id.from(_N, "GetHealthCheckLastFailureReasonResponse"),
    type = "structure",
    members = {
        HealthCheckObservations = schema.new({
            id = id.from(_N, "GetHealthCheckLastFailureReasonOutput", "HealthCheckObservations"),
            type = "list",
            name = "HealthCheckObservations",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.HealthCheckObservation, traits = { [traits.XML_NAME] = { name = "HealthCheckObservation" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetHealthCheckStatusInput = schema.new({
    id = id.from(_N, "GetHealthCheckStatusRequest"),
    type = "structure",
    members = {
        HealthCheckId = schema.new({
            id = id.from(_N, "GetHealthCheckStatusInput", "HealthCheckId"),
            type = "string",
            name = "HealthCheckId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetHealthCheckStatusOutput = schema.new({
    id = id.from(_N, "GetHealthCheckStatusResponse"),
    type = "structure",
    members = {
        HealthCheckObservations = schema.new({
            id = id.from(_N, "GetHealthCheckStatusOutput", "HealthCheckObservations"),
            type = "list",
            name = "HealthCheckObservations",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.HealthCheckObservation, traits = { [traits.XML_NAME] = { name = "HealthCheckObservation" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetHostedZoneInput = schema.new({
    id = id.from(_N, "GetHostedZoneRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetHostedZoneInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetHostedZoneOutput = schema.new({
    id = id.from(_N, "GetHostedZoneResponse"),
    type = "structure",
    members = {
        HostedZone = schema.new({
            id = id.from(_N, "GetHostedZoneOutput", "HostedZone"),
            type = "structure",
            name = "HostedZone",
            target_id = id.from(_N, "HostedZone"),
            target = M.HostedZone,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DelegationSet = schema.new({
            id = id.from(_N, "GetHostedZoneOutput", "DelegationSet"),
            type = "structure",
            name = "DelegationSet",
            target_id = id.from(_N, "DelegationSet"),
            target = M.DelegationSet,
        }),
        VPCs = schema.new({
            id = id.from(_N, "GetHostedZoneOutput", "VPCs"),
            type = "list",
            name = "VPCs",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.VPC, traits = { [traits.XML_NAME] = { name = "VPC" } } }),
        }),
    },
})

M.GetHostedZoneCountInput = schema.new({
    id = id.from(_N, "GetHostedZoneCountRequest"),
    type = "structure",
})

M.GetHostedZoneCountOutput = schema.new({
    id = id.from(_N, "GetHostedZoneCountResponse"),
    type = "structure",
    members = {
        HostedZoneCount = schema.new({
            id = id.from(_N, "GetHostedZoneCountOutput", "HostedZoneCount"),
            type = "long",
            name = "HostedZoneCount",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetHostedZoneLimitInput = schema.new({
    id = id.from(_N, "GetHostedZoneLimitRequest"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "GetHostedZoneLimitInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        HostedZoneId = schema.new({
            id = id.from(_N, "GetHostedZoneLimitInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.HostedZoneLimit = schema.new({
    id = id.from(_N, "HostedZoneLimit"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "HostedZoneLimit", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "HostedZoneLimit", "Value"),
            type = "long",
            name = "Value",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetHostedZoneLimitOutput = schema.new({
    id = id.from(_N, "GetHostedZoneLimitResponse"),
    type = "structure",
    members = {
        Limit = schema.new({
            id = id.from(_N, "GetHostedZoneLimitOutput", "Limit"),
            type = "structure",
            name = "Limit",
            target_id = id.from(_N, "HostedZoneLimit"),
            target = M.HostedZoneLimit,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Count = schema.new({
            id = id.from(_N, "GetHostedZoneLimitOutput", "Count"),
            type = "long",
            name = "Count",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.HostedZoneNotPrivate = schema.new({
    id = id.from(_N, "HostedZoneNotPrivate"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "HostedZoneNotPrivate", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.GetQueryLoggingConfigInput = schema.new({
    id = id.from(_N, "GetQueryLoggingConfigRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetQueryLoggingConfigInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetQueryLoggingConfigOutput = schema.new({
    id = id.from(_N, "GetQueryLoggingConfigResponse"),
    type = "structure",
    members = {
        QueryLoggingConfig = schema.new({
            id = id.from(_N, "GetQueryLoggingConfigOutput", "QueryLoggingConfig"),
            type = "structure",
            name = "QueryLoggingConfig",
            target_id = id.from(_N, "QueryLoggingConfig"),
            target = M.QueryLoggingConfig,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetReusableDelegationSetInput = schema.new({
    id = id.from(_N, "GetReusableDelegationSetRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetReusableDelegationSetInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetReusableDelegationSetOutput = schema.new({
    id = id.from(_N, "GetReusableDelegationSetResponse"),
    type = "structure",
    members = {
        DelegationSet = schema.new({
            id = id.from(_N, "GetReusableDelegationSetOutput", "DelegationSet"),
            type = "structure",
            name = "DelegationSet",
            target_id = id.from(_N, "DelegationSet"),
            target = M.DelegationSet,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetReusableDelegationSetLimitInput = schema.new({
    id = id.from(_N, "GetReusableDelegationSetLimitRequest"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "GetReusableDelegationSetLimitInput", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        DelegationSetId = schema.new({
            id = id.from(_N, "GetReusableDelegationSetLimitInput", "DelegationSetId"),
            type = "string",
            name = "DelegationSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ReusableDelegationSetLimit = schema.new({
    id = id.from(_N, "ReusableDelegationSetLimit"),
    type = "structure",
    members = {
        Type = schema.new({
            id = id.from(_N, "ReusableDelegationSetLimit", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Value = schema.new({
            id = id.from(_N, "ReusableDelegationSetLimit", "Value"),
            type = "long",
            name = "Value",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetReusableDelegationSetLimitOutput = schema.new({
    id = id.from(_N, "GetReusableDelegationSetLimitResponse"),
    type = "structure",
    members = {
        Limit = schema.new({
            id = id.from(_N, "GetReusableDelegationSetLimitOutput", "Limit"),
            type = "structure",
            name = "Limit",
            target_id = id.from(_N, "ReusableDelegationSetLimit"),
            target = M.ReusableDelegationSetLimit,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Count = schema.new({
            id = id.from(_N, "GetReusableDelegationSetLimitOutput", "Count"),
            type = "long",
            name = "Count",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = 0 },
            },
        }),
    },
})

M.GetTrafficPolicyInput = schema.new({
    id = id.from(_N, "GetTrafficPolicyRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetTrafficPolicyInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Version = schema.new({
            id = id.from(_N, "GetTrafficPolicyInput", "Version"),
            type = "integer",
            name = "Version",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetTrafficPolicyOutput = schema.new({
    id = id.from(_N, "GetTrafficPolicyResponse"),
    type = "structure",
    members = {
        TrafficPolicy = schema.new({
            id = id.from(_N, "GetTrafficPolicyOutput", "TrafficPolicy"),
            type = "structure",
            name = "TrafficPolicy",
            target_id = id.from(_N, "TrafficPolicy"),
            target = M.TrafficPolicy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetTrafficPolicyInstanceInput = schema.new({
    id = id.from(_N, "GetTrafficPolicyInstanceRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "GetTrafficPolicyInstanceInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.GetTrafficPolicyInstanceOutput = schema.new({
    id = id.from(_N, "GetTrafficPolicyInstanceResponse"),
    type = "structure",
    members = {
        TrafficPolicyInstance = schema.new({
            id = id.from(_N, "GetTrafficPolicyInstanceOutput", "TrafficPolicyInstance"),
            type = "structure",
            name = "TrafficPolicyInstance",
            target_id = id.from(_N, "TrafficPolicyInstance"),
            target = M.TrafficPolicyInstance,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.GetTrafficPolicyInstanceCountInput = schema.new({
    id = id.from(_N, "GetTrafficPolicyInstanceCountRequest"),
    type = "structure",
})

M.GetTrafficPolicyInstanceCountOutput = schema.new({
    id = id.from(_N, "GetTrafficPolicyInstanceCountResponse"),
    type = "structure",
    members = {
        TrafficPolicyInstanceCount = schema.new({
            id = id.from(_N, "GetTrafficPolicyInstanceCountOutput", "TrafficPolicyInstanceCount"),
            type = "integer",
            name = "TrafficPolicyInstanceCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListCidrBlocksInput = schema.new({
    id = id.from(_N, "ListCidrBlocksRequest"),
    type = "structure",
    members = {
        CollectionId = schema.new({
            id = id.from(_N, "ListCidrBlocksInput", "CollectionId"),
            type = "string",
            name = "CollectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        LocationName = schema.new({
            id = id.from(_N, "ListCidrBlocksInput", "LocationName"),
            type = "string",
            name = "LocationName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "location" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCidrBlocksInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nexttoken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListCidrBlocksInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxresults" },
            },
        }),
    },
})

M.CidrBlockSummary = schema.new({
    id = id.from(_N, "CidrBlockSummary"),
    type = "structure",
    members = {
        CidrBlock = schema.new({
            id = id.from(_N, "CidrBlockSummary", "CidrBlock"),
            type = "string",
            name = "CidrBlock",
            target_id = prelude.String.id,
        }),
        LocationName = schema.new({
            id = id.from(_N, "CidrBlockSummary", "LocationName"),
            type = "string",
            name = "LocationName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCidrBlocksOutput = schema.new({
    id = id.from(_N, "ListCidrBlocksResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListCidrBlocksOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        CidrBlocks = schema.new({
            id = id.from(_N, "ListCidrBlocksOutput", "CidrBlocks"),
            type = "list",
            name = "CidrBlocks",
            target_id = prelude.Document.id,
            list_member = M.CidrBlockSummary,
        }),
    },
})

M.NoSuchCidrLocationException = schema.new({
    id = id.from(_N, "NoSuchCidrLocationException"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        Message = schema.new({
            id = id.from(_N, "NoSuchCidrLocationException", "Message"),
            type = "string",
            name = "Message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCidrCollectionsInput = schema.new({
    id = id.from(_N, "ListCidrCollectionsRequest"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListCidrCollectionsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nexttoken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListCidrCollectionsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxresults" },
            },
        }),
    },
})

M.CollectionSummary = schema.new({
    id = id.from(_N, "CollectionSummary"),
    type = "structure",
    members = {
        Arn = schema.new({
            id = id.from(_N, "CollectionSummary", "Arn"),
            type = "string",
            name = "Arn",
            target_id = prelude.String.id,
        }),
        Id = schema.new({
            id = id.from(_N, "CollectionSummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
        }),
        Name = schema.new({
            id = id.from(_N, "CollectionSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
        }),
        Version = schema.new({
            id = id.from(_N, "CollectionSummary", "Version"),
            type = "long",
            name = "Version",
            target_id = prelude.Long.id,
        }),
    },
})

M.ListCidrCollectionsOutput = schema.new({
    id = id.from(_N, "ListCidrCollectionsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListCidrCollectionsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        CidrCollections = schema.new({
            id = id.from(_N, "ListCidrCollectionsOutput", "CidrCollections"),
            type = "list",
            name = "CidrCollections",
            target_id = prelude.Document.id,
            list_member = M.CollectionSummary,
        }),
    },
})

M.ListCidrLocationsInput = schema.new({
    id = id.from(_N, "ListCidrLocationsRequest"),
    type = "structure",
    members = {
        CollectionId = schema.new({
            id = id.from(_N, "ListCidrLocationsInput", "CollectionId"),
            type = "string",
            name = "CollectionId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListCidrLocationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nexttoken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListCidrLocationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxresults" },
            },
        }),
    },
})

M.LocationSummary = schema.new({
    id = id.from(_N, "LocationSummary"),
    type = "structure",
    members = {
        LocationName = schema.new({
            id = id.from(_N, "LocationSummary", "LocationName"),
            type = "string",
            name = "LocationName",
            target_id = prelude.String.id,
        }),
    },
})

M.ListCidrLocationsOutput = schema.new({
    id = id.from(_N, "ListCidrLocationsResponse"),
    type = "structure",
    members = {
        NextToken = schema.new({
            id = id.from(_N, "ListCidrLocationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        CidrLocations = schema.new({
            id = id.from(_N, "ListCidrLocationsOutput", "CidrLocations"),
            type = "list",
            name = "CidrLocations",
            target_id = prelude.Document.id,
            list_member = M.LocationSummary,
        }),
    },
})

M.ListGeoLocationsInput = schema.new({
    id = id.from(_N, "ListGeoLocationsRequest"),
    type = "structure",
    members = {
        StartContinentCode = schema.new({
            id = id.from(_N, "ListGeoLocationsInput", "StartContinentCode"),
            type = "string",
            name = "StartContinentCode",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startcontinentcode" },
            },
        }),
        StartCountryCode = schema.new({
            id = id.from(_N, "ListGeoLocationsInput", "StartCountryCode"),
            type = "string",
            name = "StartCountryCode",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startcountrycode" },
            },
        }),
        StartSubdivisionCode = schema.new({
            id = id.from(_N, "ListGeoLocationsInput", "StartSubdivisionCode"),
            type = "string",
            name = "StartSubdivisionCode",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "startsubdivisioncode" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListGeoLocationsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxitems" },
            },
        }),
    },
})

M.ListGeoLocationsOutput = schema.new({
    id = id.from(_N, "ListGeoLocationsResponse"),
    type = "structure",
    members = {
        GeoLocationDetailsList = schema.new({
            id = id.from(_N, "ListGeoLocationsOutput", "GeoLocationDetailsList"),
            type = "list",
            name = "GeoLocationDetailsList",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.GeoLocationDetails, traits = { [traits.XML_NAME] = { name = "GeoLocationDetails" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListGeoLocationsOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        NextContinentCode = schema.new({
            id = id.from(_N, "ListGeoLocationsOutput", "NextContinentCode"),
            type = "string",
            name = "NextContinentCode",
            target_id = prelude.String.id,
        }),
        NextCountryCode = schema.new({
            id = id.from(_N, "ListGeoLocationsOutput", "NextCountryCode"),
            type = "string",
            name = "NextCountryCode",
            target_id = prelude.String.id,
        }),
        NextSubdivisionCode = schema.new({
            id = id.from(_N, "ListGeoLocationsOutput", "NextSubdivisionCode"),
            type = "string",
            name = "NextSubdivisionCode",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListGeoLocationsOutput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListHealthChecksInput = schema.new({
    id = id.from(_N, "ListHealthChecksRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListHealthChecksInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListHealthChecksInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxitems" },
            },
        }),
    },
})

M.ListHealthChecksOutput = schema.new({
    id = id.from(_N, "ListHealthChecksResponse"),
    type = "structure",
    members = {
        HealthChecks = schema.new({
            id = id.from(_N, "ListHealthChecksOutput", "HealthChecks"),
            type = "list",
            name = "HealthChecks",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.HealthCheck, traits = { [traits.XML_NAME] = { name = "HealthCheck" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListHealthChecksOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListHealthChecksOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        NextMarker = schema.new({
            id = id.from(_N, "ListHealthChecksOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListHealthChecksOutput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListHostedZonesInput = schema.new({
    id = id.from(_N, "ListHostedZonesRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListHostedZonesInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListHostedZonesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxitems" },
            },
        }),
        DelegationSetId = schema.new({
            id = id.from(_N, "ListHostedZonesInput", "DelegationSetId"),
            type = "string",
            name = "DelegationSetId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "delegationsetid" },
            },
        }),
        HostedZoneType = schema.new({
            id = id.from(_N, "ListHostedZonesInput", "HostedZoneType"),
            type = "string",
            name = "HostedZoneType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "hostedzonetype" },
            },
        }),
    },
})

M.ListHostedZonesOutput = schema.new({
    id = id.from(_N, "ListHostedZonesResponse"),
    type = "structure",
    members = {
        HostedZones = schema.new({
            id = id.from(_N, "ListHostedZonesOutput", "HostedZones"),
            type = "list",
            name = "HostedZones",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.HostedZone, traits = { [traits.XML_NAME] = { name = "HostedZone" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListHostedZonesOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListHostedZonesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        NextMarker = schema.new({
            id = id.from(_N, "ListHostedZonesOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListHostedZonesOutput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListHostedZonesByNameInput = schema.new({
    id = id.from(_N, "ListHostedZonesByNameRequest"),
    type = "structure",
    members = {
        DNSName = schema.new({
            id = id.from(_N, "ListHostedZonesByNameInput", "DNSName"),
            type = "string",
            name = "DNSName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "dnsname" },
            },
        }),
        HostedZoneId = schema.new({
            id = id.from(_N, "ListHostedZonesByNameInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "hostedzoneid" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListHostedZonesByNameInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxitems" },
            },
        }),
    },
})

M.ListHostedZonesByNameOutput = schema.new({
    id = id.from(_N, "ListHostedZonesByNameResponse"),
    type = "structure",
    members = {
        HostedZones = schema.new({
            id = id.from(_N, "ListHostedZonesByNameOutput", "HostedZones"),
            type = "list",
            name = "HostedZones",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.HostedZone, traits = { [traits.XML_NAME] = { name = "HostedZone" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        DNSName = schema.new({
            id = id.from(_N, "ListHostedZonesByNameOutput", "DNSName"),
            type = "string",
            name = "DNSName",
            target_id = prelude.String.id,
        }),
        HostedZoneId = schema.new({
            id = id.from(_N, "ListHostedZonesByNameOutput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListHostedZonesByNameOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        NextDNSName = schema.new({
            id = id.from(_N, "ListHostedZonesByNameOutput", "NextDNSName"),
            type = "string",
            name = "NextDNSName",
            target_id = prelude.String.id,
        }),
        NextHostedZoneId = schema.new({
            id = id.from(_N, "ListHostedZonesByNameOutput", "NextHostedZoneId"),
            type = "string",
            name = "NextHostedZoneId",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListHostedZonesByNameOutput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.InvalidPaginationToken = schema.new({
    id = id.from(_N, "InvalidPaginationToken"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "InvalidPaginationToken", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.ListHostedZonesByVPCInput = schema.new({
    id = id.from(_N, "ListHostedZonesByVPCRequest"),
    type = "structure",
    members = {
        VPCId = schema.new({
            id = id.from(_N, "ListHostedZonesByVPCInput", "VPCId"),
            type = "string",
            name = "VPCId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "vpcid" },
            },
        }),
        VPCRegion = schema.new({
            id = id.from(_N, "ListHostedZonesByVPCInput", "VPCRegion"),
            type = "string",
            name = "VPCRegion",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "vpcregion" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListHostedZonesByVPCInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxitems" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListHostedZonesByVPCInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nexttoken" },
            },
        }),
    },
})

M.HostedZoneOwner = schema.new({
    id = id.from(_N, "HostedZoneOwner"),
    type = "structure",
    members = {
        OwningAccount = schema.new({
            id = id.from(_N, "HostedZoneOwner", "OwningAccount"),
            type = "string",
            name = "OwningAccount",
            target_id = prelude.String.id,
        }),
        OwningService = schema.new({
            id = id.from(_N, "HostedZoneOwner", "OwningService"),
            type = "string",
            name = "OwningService",
            target_id = prelude.String.id,
        }),
    },
})

M.HostedZoneSummary = schema.new({
    id = id.from(_N, "HostedZoneSummary"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "HostedZoneSummary", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "HostedZoneSummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Owner = schema.new({
            id = id.from(_N, "HostedZoneSummary", "Owner"),
            type = "structure",
            name = "Owner",
            target_id = id.from(_N, "HostedZoneOwner"),
            target = M.HostedZoneOwner,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListHostedZonesByVPCOutput = schema.new({
    id = id.from(_N, "ListHostedZonesByVPCResponse"),
    type = "structure",
    members = {
        HostedZoneSummaries = schema.new({
            id = id.from(_N, "ListHostedZonesByVPCOutput", "HostedZoneSummaries"),
            type = "list",
            name = "HostedZoneSummaries",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.HostedZoneSummary, traits = { [traits.XML_NAME] = { name = "HostedZoneSummary" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListHostedZonesByVPCOutput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListHostedZonesByVPCOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListQueryLoggingConfigsInput = schema.new({
    id = id.from(_N, "ListQueryLoggingConfigsRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "ListQueryLoggingConfigsInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "hostedzoneid" },
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListQueryLoggingConfigsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nexttoken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListQueryLoggingConfigsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxresults" },
            },
        }),
    },
})

M.ListQueryLoggingConfigsOutput = schema.new({
    id = id.from(_N, "ListQueryLoggingConfigsResponse"),
    type = "structure",
    members = {
        QueryLoggingConfigs = schema.new({
            id = id.from(_N, "ListQueryLoggingConfigsOutput", "QueryLoggingConfigs"),
            type = "list",
            name = "QueryLoggingConfigs",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.QueryLoggingConfig, traits = { [traits.XML_NAME] = { name = "QueryLoggingConfig" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListQueryLoggingConfigsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
    },
})

M.ListResourceRecordSetsInput = schema.new({
    id = id.from(_N, "ListResourceRecordSetsRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "ListResourceRecordSetsInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        StartRecordName = schema.new({
            id = id.from(_N, "ListResourceRecordSetsInput", "StartRecordName"),
            type = "string",
            name = "StartRecordName",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "name" },
            },
        }),
        StartRecordType = schema.new({
            id = id.from(_N, "ListResourceRecordSetsInput", "StartRecordType"),
            type = "string",
            name = "StartRecordType",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "type" },
            },
        }),
        StartRecordIdentifier = schema.new({
            id = id.from(_N, "ListResourceRecordSetsInput", "StartRecordIdentifier"),
            type = "string",
            name = "StartRecordIdentifier",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "identifier" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListResourceRecordSetsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxitems" },
            },
        }),
    },
})

M.ListResourceRecordSetsOutput = schema.new({
    id = id.from(_N, "ListResourceRecordSetsResponse"),
    type = "structure",
    members = {
        ResourceRecordSets = schema.new({
            id = id.from(_N, "ListResourceRecordSetsOutput", "ResourceRecordSets"),
            type = "list",
            name = "ResourceRecordSets",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ResourceRecordSet, traits = { [traits.XML_NAME] = { name = "ResourceRecordSet" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListResourceRecordSetsOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        NextRecordName = schema.new({
            id = id.from(_N, "ListResourceRecordSetsOutput", "NextRecordName"),
            type = "string",
            name = "NextRecordName",
            target_id = prelude.String.id,
        }),
        NextRecordType = schema.new({
            id = id.from(_N, "ListResourceRecordSetsOutput", "NextRecordType"),
            type = "string",
            name = "NextRecordType",
            target_id = prelude.String.id,
        }),
        NextRecordIdentifier = schema.new({
            id = id.from(_N, "ListResourceRecordSetsOutput", "NextRecordIdentifier"),
            type = "string",
            name = "NextRecordIdentifier",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListResourceRecordSetsOutput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListReusableDelegationSetsInput = schema.new({
    id = id.from(_N, "ListReusableDelegationSetsRequest"),
    type = "structure",
    members = {
        Marker = schema.new({
            id = id.from(_N, "ListReusableDelegationSetsInput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "marker" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListReusableDelegationSetsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxitems" },
            },
        }),
    },
})

M.ListReusableDelegationSetsOutput = schema.new({
    id = id.from(_N, "ListReusableDelegationSetsResponse"),
    type = "structure",
    members = {
        DelegationSets = schema.new({
            id = id.from(_N, "ListReusableDelegationSetsOutput", "DelegationSets"),
            type = "list",
            name = "DelegationSets",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.DelegationSet, traits = { [traits.XML_NAME] = { name = "DelegationSet" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Marker = schema.new({
            id = id.from(_N, "ListReusableDelegationSetsOutput", "Marker"),
            type = "string",
            name = "Marker",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListReusableDelegationSetsOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        NextMarker = schema.new({
            id = id.from(_N, "ListReusableDelegationSetsOutput", "NextMarker"),
            type = "string",
            name = "NextMarker",
            target_id = prelude.String.id,
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListReusableDelegationSetsOutput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourceInput = schema.new({
    id = id.from(_N, "ListTagsForResourceRequest"),
    type = "structure",
    members = {
        ResourceType = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ListTagsForResourceInput", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
    },
})

M.ResourceTagSet = schema.new({
    id = id.from(_N, "ResourceTagSet"),
    type = "structure",
    members = {
        ResourceType = schema.new({
            id = id.from(_N, "ResourceTagSet", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
        }),
        ResourceId = schema.new({
            id = id.from(_N, "ResourceTagSet", "ResourceId"),
            type = "string",
            name = "ResourceId",
            target_id = prelude.String.id,
        }),
        Tags = schema.new({
            id = id.from(_N, "ResourceTagSet", "Tags"),
            type = "list",
            name = "Tags",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.Tag, traits = { [traits.XML_NAME] = { name = "Tag" } } }),
        }),
    },
})

M.ListTagsForResourceOutput = schema.new({
    id = id.from(_N, "ListTagsForResourceResponse"),
    type = "structure",
    members = {
        ResourceTagSet = schema.new({
            id = id.from(_N, "ListTagsForResourceOutput", "ResourceTagSet"),
            type = "structure",
            name = "ResourceTagSet",
            target_id = id.from(_N, "ResourceTagSet"),
            target = M.ResourceTagSet,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourcesInput = schema.new({
    id = id.from(_N, "ListTagsForResourcesRequest"),
    type = "structure",
    members = {
        ResourceType = schema.new({
            id = id.from(_N, "ListTagsForResourcesInput", "ResourceType"),
            type = "string",
            name = "ResourceType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        ResourceIds = schema.new({
            id = id.from(_N, "ListTagsForResourcesInput", "ResourceIds"),
            type = "list",
            name = "ResourceIds",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "ResourceId" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTagsForResourcesOutput = schema.new({
    id = id.from(_N, "ListTagsForResourcesResponse"),
    type = "structure",
    members = {
        ResourceTagSets = schema.new({
            id = id.from(_N, "ListTagsForResourcesOutput", "ResourceTagSets"),
            type = "list",
            name = "ResourceTagSets",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.ResourceTagSet, traits = { [traits.XML_NAME] = { name = "ResourceTagSet" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTrafficPoliciesInput = schema.new({
    id = id.from(_N, "ListTrafficPoliciesRequest"),
    type = "structure",
    members = {
        TrafficPolicyIdMarker = schema.new({
            id = id.from(_N, "ListTrafficPoliciesInput", "TrafficPolicyIdMarker"),
            type = "string",
            name = "TrafficPolicyIdMarker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "trafficpolicyid" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListTrafficPoliciesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxitems" },
            },
        }),
    },
})

M.TrafficPolicySummary = schema.new({
    id = id.from(_N, "TrafficPolicySummary"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "TrafficPolicySummary", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Name = schema.new({
            id = id.from(_N, "TrafficPolicySummary", "Name"),
            type = "string",
            name = "Name",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Type = schema.new({
            id = id.from(_N, "TrafficPolicySummary", "Type"),
            type = "string",
            name = "Type",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        LatestVersion = schema.new({
            id = id.from(_N, "TrafficPolicySummary", "LatestVersion"),
            type = "integer",
            name = "LatestVersion",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrafficPolicyCount = schema.new({
            id = id.from(_N, "TrafficPolicySummary", "TrafficPolicyCount"),
            type = "integer",
            name = "TrafficPolicyCount",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTrafficPoliciesOutput = schema.new({
    id = id.from(_N, "ListTrafficPoliciesResponse"),
    type = "structure",
    members = {
        TrafficPolicySummaries = schema.new({
            id = id.from(_N, "ListTrafficPoliciesOutput", "TrafficPolicySummaries"),
            type = "list",
            name = "TrafficPolicySummaries",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.TrafficPolicySummary, traits = { [traits.XML_NAME] = { name = "TrafficPolicySummary" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListTrafficPoliciesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        TrafficPolicyIdMarker = schema.new({
            id = id.from(_N, "ListTrafficPoliciesOutput", "TrafficPolicyIdMarker"),
            type = "string",
            name = "TrafficPolicyIdMarker",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListTrafficPoliciesOutput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTrafficPolicyInstancesInput = schema.new({
    id = id.from(_N, "ListTrafficPolicyInstancesRequest"),
    type = "structure",
    members = {
        HostedZoneIdMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesInput", "HostedZoneIdMarker"),
            type = "string",
            name = "HostedZoneIdMarker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "hostedzoneid" },
            },
        }),
        TrafficPolicyInstanceNameMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesInput", "TrafficPolicyInstanceNameMarker"),
            type = "string",
            name = "TrafficPolicyInstanceNameMarker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "trafficpolicyinstancename" },
            },
        }),
        TrafficPolicyInstanceTypeMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesInput", "TrafficPolicyInstanceTypeMarker"),
            type = "string",
            name = "TrafficPolicyInstanceTypeMarker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "trafficpolicyinstancetype" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxitems" },
            },
        }),
    },
})

M.ListTrafficPolicyInstancesOutput = schema.new({
    id = id.from(_N, "ListTrafficPolicyInstancesResponse"),
    type = "structure",
    members = {
        TrafficPolicyInstances = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesOutput", "TrafficPolicyInstances"),
            type = "list",
            name = "TrafficPolicyInstances",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.TrafficPolicyInstance, traits = { [traits.XML_NAME] = { name = "TrafficPolicyInstance" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HostedZoneIdMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesOutput", "HostedZoneIdMarker"),
            type = "string",
            name = "HostedZoneIdMarker",
            target_id = prelude.String.id,
        }),
        TrafficPolicyInstanceNameMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesOutput", "TrafficPolicyInstanceNameMarker"),
            type = "string",
            name = "TrafficPolicyInstanceNameMarker",
            target_id = prelude.String.id,
        }),
        TrafficPolicyInstanceTypeMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesOutput", "TrafficPolicyInstanceTypeMarker"),
            type = "string",
            name = "TrafficPolicyInstanceTypeMarker",
            target_id = prelude.String.id,
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesOutput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTrafficPolicyInstancesByHostedZoneInput = schema.new({
    id = id.from(_N, "ListTrafficPolicyInstancesByHostedZoneRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByHostedZoneInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "id" },
            },
        }),
        TrafficPolicyInstanceNameMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByHostedZoneInput", "TrafficPolicyInstanceNameMarker"),
            type = "string",
            name = "TrafficPolicyInstanceNameMarker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "trafficpolicyinstancename" },
            },
        }),
        TrafficPolicyInstanceTypeMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByHostedZoneInput", "TrafficPolicyInstanceTypeMarker"),
            type = "string",
            name = "TrafficPolicyInstanceTypeMarker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "trafficpolicyinstancetype" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByHostedZoneInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxitems" },
            },
        }),
    },
})

M.ListTrafficPolicyInstancesByHostedZoneOutput = schema.new({
    id = id.from(_N, "ListTrafficPolicyInstancesByHostedZoneResponse"),
    type = "structure",
    members = {
        TrafficPolicyInstances = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByHostedZoneOutput", "TrafficPolicyInstances"),
            type = "list",
            name = "TrafficPolicyInstances",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.TrafficPolicyInstance, traits = { [traits.XML_NAME] = { name = "TrafficPolicyInstance" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrafficPolicyInstanceNameMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByHostedZoneOutput", "TrafficPolicyInstanceNameMarker"),
            type = "string",
            name = "TrafficPolicyInstanceNameMarker",
            target_id = prelude.String.id,
        }),
        TrafficPolicyInstanceTypeMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByHostedZoneOutput", "TrafficPolicyInstanceTypeMarker"),
            type = "string",
            name = "TrafficPolicyInstanceTypeMarker",
            target_id = prelude.String.id,
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByHostedZoneOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByHostedZoneOutput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTrafficPolicyInstancesByPolicyInput = schema.new({
    id = id.from(_N, "ListTrafficPolicyInstancesByPolicyRequest"),
    type = "structure",
    members = {
        TrafficPolicyId = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByPolicyInput", "TrafficPolicyId"),
            type = "string",
            name = "TrafficPolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "id" },
            },
        }),
        TrafficPolicyVersion = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByPolicyInput", "TrafficPolicyVersion"),
            type = "integer",
            name = "TrafficPolicyVersion",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "version" },
            },
        }),
        HostedZoneIdMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByPolicyInput", "HostedZoneIdMarker"),
            type = "string",
            name = "HostedZoneIdMarker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "hostedzoneid" },
            },
        }),
        TrafficPolicyInstanceNameMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByPolicyInput", "TrafficPolicyInstanceNameMarker"),
            type = "string",
            name = "TrafficPolicyInstanceNameMarker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "trafficpolicyinstancename" },
            },
        }),
        TrafficPolicyInstanceTypeMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByPolicyInput", "TrafficPolicyInstanceTypeMarker"),
            type = "string",
            name = "TrafficPolicyInstanceTypeMarker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "trafficpolicyinstancetype" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByPolicyInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxitems" },
            },
        }),
    },
})

M.ListTrafficPolicyInstancesByPolicyOutput = schema.new({
    id = id.from(_N, "ListTrafficPolicyInstancesByPolicyResponse"),
    type = "structure",
    members = {
        TrafficPolicyInstances = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByPolicyOutput", "TrafficPolicyInstances"),
            type = "list",
            name = "TrafficPolicyInstances",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.TrafficPolicyInstance, traits = { [traits.XML_NAME] = { name = "TrafficPolicyInstance" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        HostedZoneIdMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByPolicyOutput", "HostedZoneIdMarker"),
            type = "string",
            name = "HostedZoneIdMarker",
            target_id = prelude.String.id,
        }),
        TrafficPolicyInstanceNameMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByPolicyOutput", "TrafficPolicyInstanceNameMarker"),
            type = "string",
            name = "TrafficPolicyInstanceNameMarker",
            target_id = prelude.String.id,
        }),
        TrafficPolicyInstanceTypeMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByPolicyOutput", "TrafficPolicyInstanceTypeMarker"),
            type = "string",
            name = "TrafficPolicyInstanceTypeMarker",
            target_id = prelude.String.id,
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByPolicyOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListTrafficPolicyInstancesByPolicyOutput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListTrafficPolicyVersionsInput = schema.new({
    id = id.from(_N, "ListTrafficPolicyVersionsRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "ListTrafficPolicyVersionsInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TrafficPolicyVersionMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyVersionsInput", "TrafficPolicyVersionMarker"),
            type = "string",
            name = "TrafficPolicyVersionMarker",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "trafficpolicyversion" },
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListTrafficPolicyVersionsInput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxitems" },
            },
        }),
    },
})

M.ListTrafficPolicyVersionsOutput = schema.new({
    id = id.from(_N, "ListTrafficPolicyVersionsResponse"),
    type = "structure",
    members = {
        TrafficPolicies = schema.new({
            id = id.from(_N, "ListTrafficPolicyVersionsOutput", "TrafficPolicies"),
            type = "list",
            name = "TrafficPolicies",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.TrafficPolicy, traits = { [traits.XML_NAME] = { name = "TrafficPolicy" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        IsTruncated = schema.new({
            id = id.from(_N, "ListTrafficPolicyVersionsOutput", "IsTruncated"),
            type = "boolean",
            name = "IsTruncated",
            target_id = prelude.Boolean.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.DEFAULT] = { value = false },
            },
        }),
        TrafficPolicyVersionMarker = schema.new({
            id = id.from(_N, "ListTrafficPolicyVersionsOutput", "TrafficPolicyVersionMarker"),
            type = "string",
            name = "TrafficPolicyVersionMarker",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        MaxItems = schema.new({
            id = id.from(_N, "ListTrafficPolicyVersionsOutput", "MaxItems"),
            type = "integer",
            name = "MaxItems",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ListVPCAssociationAuthorizationsInput = schema.new({
    id = id.from(_N, "ListVPCAssociationAuthorizationsRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "ListVPCAssociationAuthorizationsInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListVPCAssociationAuthorizationsInput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "nexttoken" },
            },
        }),
        MaxResults = schema.new({
            id = id.from(_N, "ListVPCAssociationAuthorizationsInput", "MaxResults"),
            type = "integer",
            name = "MaxResults",
            target_id = prelude.Integer.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "maxresults" },
            },
        }),
    },
})

M.ListVPCAssociationAuthorizationsOutput = schema.new({
    id = id.from(_N, "ListVPCAssociationAuthorizationsResponse"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "ListVPCAssociationAuthorizationsOutput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        NextToken = schema.new({
            id = id.from(_N, "ListVPCAssociationAuthorizationsOutput", "NextToken"),
            type = "string",
            name = "NextToken",
            target_id = prelude.String.id,
        }),
        VPCs = schema.new({
            id = id.from(_N, "ListVPCAssociationAuthorizationsOutput", "VPCs"),
            type = "list",
            name = "VPCs",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "structure", target = M.VPC, traits = { [traits.XML_NAME] = { name = "VPC" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.TestDNSAnswerInput = schema.new({
    id = id.from(_N, "TestDNSAnswerRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "TestDNSAnswerInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "hostedzoneid" },
            },
        }),
        RecordName = schema.new({
            id = id.from(_N, "TestDNSAnswerInput", "RecordName"),
            type = "string",
            name = "RecordName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "recordname" },
            },
        }),
        RecordType = schema.new({
            id = id.from(_N, "TestDNSAnswerInput", "RecordType"),
            type = "string",
            name = "RecordType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_QUERY] = { name = "recordtype" },
            },
        }),
        ResolverIP = schema.new({
            id = id.from(_N, "TestDNSAnswerInput", "ResolverIP"),
            type = "string",
            name = "ResolverIP",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "resolverip" },
            },
        }),
        EDNS0ClientSubnetIP = schema.new({
            id = id.from(_N, "TestDNSAnswerInput", "EDNS0ClientSubnetIP"),
            type = "string",
            name = "EDNS0ClientSubnetIP",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "edns0clientsubnetip" },
            },
        }),
        EDNS0ClientSubnetMask = schema.new({
            id = id.from(_N, "TestDNSAnswerInput", "EDNS0ClientSubnetMask"),
            type = "string",
            name = "EDNS0ClientSubnetMask",
            target_id = prelude.String.id,
            traits = {
                [traits.HTTP_QUERY] = { name = "edns0clientsubnetmask" },
            },
        }),
    },
})

M.TestDNSAnswerOutput = schema.new({
    id = id.from(_N, "TestDNSAnswerResponse"),
    type = "structure",
    members = {
        Nameserver = schema.new({
            id = id.from(_N, "TestDNSAnswerOutput", "Nameserver"),
            type = "string",
            name = "Nameserver",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecordName = schema.new({
            id = id.from(_N, "TestDNSAnswerOutput", "RecordName"),
            type = "string",
            name = "RecordName",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecordType = schema.new({
            id = id.from(_N, "TestDNSAnswerOutput", "RecordType"),
            type = "string",
            name = "RecordType",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        RecordData = schema.new({
            id = id.from(_N, "TestDNSAnswerOutput", "RecordData"),
            type = "list",
            name = "RecordData",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "RecordDataEntry" } } }),
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        ResponseCode = schema.new({
            id = id.from(_N, "TestDNSAnswerOutput", "ResponseCode"),
            type = "string",
            name = "ResponseCode",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        Protocol = schema.new({
            id = id.from(_N, "TestDNSAnswerOutput", "Protocol"),
            type = "string",
            name = "Protocol",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.HealthCheckVersionMismatch = schema.new({
    id = id.from(_N, "HealthCheckVersionMismatch"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "HealthCheckVersionMismatch", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateHealthCheckInput = schema.new({
    id = id.from(_N, "UpdateHealthCheckRequest"),
    type = "structure",
    members = {
        HealthCheckId = schema.new({
            id = id.from(_N, "UpdateHealthCheckInput", "HealthCheckId"),
            type = "string",
            name = "HealthCheckId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        HealthCheckVersion = schema.new({
            id = id.from(_N, "UpdateHealthCheckInput", "HealthCheckVersion"),
            type = "long",
            name = "HealthCheckVersion",
            target_id = prelude.Long.id,
        }),
        IPAddress = schema.new({
            id = id.from(_N, "UpdateHealthCheckInput", "IPAddress"),
            type = "string",
            name = "IPAddress",
            target_id = prelude.String.id,
        }),
        Port = schema.new({
            id = id.from(_N, "UpdateHealthCheckInput", "Port"),
            type = "integer",
            name = "Port",
            target_id = prelude.Integer.id,
        }),
        ResourcePath = schema.new({
            id = id.from(_N, "UpdateHealthCheckInput", "ResourcePath"),
            type = "string",
            name = "ResourcePath",
            target_id = prelude.String.id,
        }),
        FullyQualifiedDomainName = schema.new({
            id = id.from(_N, "UpdateHealthCheckInput", "FullyQualifiedDomainName"),
            type = "string",
            name = "FullyQualifiedDomainName",
            target_id = prelude.String.id,
        }),
        SearchString = schema.new({
            id = id.from(_N, "UpdateHealthCheckInput", "SearchString"),
            type = "string",
            name = "SearchString",
            target_id = prelude.String.id,
        }),
        FailureThreshold = schema.new({
            id = id.from(_N, "UpdateHealthCheckInput", "FailureThreshold"),
            type = "integer",
            name = "FailureThreshold",
            target_id = prelude.Integer.id,
        }),
        Inverted = schema.new({
            id = id.from(_N, "UpdateHealthCheckInput", "Inverted"),
            type = "boolean",
            name = "Inverted",
            target_id = prelude.Boolean.id,
        }),
        Disabled = schema.new({
            id = id.from(_N, "UpdateHealthCheckInput", "Disabled"),
            type = "boolean",
            name = "Disabled",
            target_id = prelude.Boolean.id,
        }),
        HealthThreshold = schema.new({
            id = id.from(_N, "UpdateHealthCheckInput", "HealthThreshold"),
            type = "integer",
            name = "HealthThreshold",
            target_id = prelude.Integer.id,
        }),
        ChildHealthChecks = schema.new({
            id = id.from(_N, "UpdateHealthCheckInput", "ChildHealthChecks"),
            type = "list",
            name = "ChildHealthChecks",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "ChildHealthCheck" } } }),
        }),
        EnableSNI = schema.new({
            id = id.from(_N, "UpdateHealthCheckInput", "EnableSNI"),
            type = "boolean",
            name = "EnableSNI",
            target_id = prelude.Boolean.id,
        }),
        Regions = schema.new({
            id = id.from(_N, "UpdateHealthCheckInput", "Regions"),
            type = "list",
            name = "Regions",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "Region" } } }),
        }),
        AlarmIdentifier = schema.new({
            id = id.from(_N, "UpdateHealthCheckInput", "AlarmIdentifier"),
            type = "structure",
            name = "AlarmIdentifier",
            target_id = id.from(_N, "AlarmIdentifier"),
            target = M.AlarmIdentifier,
        }),
        InsufficientDataHealthStatus = schema.new({
            id = id.from(_N, "UpdateHealthCheckInput", "InsufficientDataHealthStatus"),
            type = "string",
            name = "InsufficientDataHealthStatus",
            target_id = prelude.String.id,
        }),
        ResetElements = schema.new({
            id = id.from(_N, "UpdateHealthCheckInput", "ResetElements"),
            type = "list",
            name = "ResetElements",
            target_id = prelude.Document.id,
            list_member = schema.new({ type = "string", target = prelude.String, traits = { [traits.XML_NAME] = { name = "ResettableElementName" } } }),
        }),
    },
})

M.UpdateHealthCheckOutput = schema.new({
    id = id.from(_N, "UpdateHealthCheckResponse"),
    type = "structure",
    members = {
        HealthCheck = schema.new({
            id = id.from(_N, "UpdateHealthCheckOutput", "HealthCheck"),
            type = "structure",
            name = "HealthCheck",
            target_id = id.from(_N, "HealthCheck"),
            target = M.HealthCheck,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateHostedZoneCommentInput = schema.new({
    id = id.from(_N, "UpdateHostedZoneCommentRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateHostedZoneCommentInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "UpdateHostedZoneCommentInput", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateHostedZoneCommentOutput = schema.new({
    id = id.from(_N, "UpdateHostedZoneCommentResponse"),
    type = "structure",
    members = {
        HostedZone = schema.new({
            id = id.from(_N, "UpdateHostedZoneCommentOutput", "HostedZone"),
            type = "structure",
            name = "HostedZone",
            target_id = id.from(_N, "HostedZone"),
            target = M.HostedZone,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateHostedZoneFeaturesInput = schema.new({
    id = id.from(_N, "UpdateHostedZoneFeaturesRequest"),
    type = "structure",
    members = {
        HostedZoneId = schema.new({
            id = id.from(_N, "UpdateHostedZoneFeaturesInput", "HostedZoneId"),
            type = "string",
            name = "HostedZoneId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        EnableAcceleratedRecovery = schema.new({
            id = id.from(_N, "UpdateHostedZoneFeaturesInput", "EnableAcceleratedRecovery"),
            type = "boolean",
            name = "EnableAcceleratedRecovery",
            target_id = prelude.Boolean.id,
        }),
    },
})

M.UpdateHostedZoneFeaturesOutput = schema.new({
    id = id.from(_N, "UpdateHostedZoneFeaturesResponse"),
    type = "structure",
})

M.UpdateTrafficPolicyCommentInput = schema.new({
    id = id.from(_N, "UpdateTrafficPolicyCommentRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateTrafficPolicyCommentInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Version = schema.new({
            id = id.from(_N, "UpdateTrafficPolicyCommentInput", "Version"),
            type = "integer",
            name = "Version",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        Comment = schema.new({
            id = id.from(_N, "UpdateTrafficPolicyCommentInput", "Comment"),
            type = "string",
            name = "Comment",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateTrafficPolicyCommentOutput = schema.new({
    id = id.from(_N, "UpdateTrafficPolicyCommentResponse"),
    type = "structure",
    members = {
        TrafficPolicy = schema.new({
            id = id.from(_N, "UpdateTrafficPolicyCommentOutput", "TrafficPolicy"),
            type = "structure",
            name = "TrafficPolicy",
            target_id = id.from(_N, "TrafficPolicy"),
            target = M.TrafficPolicy,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.ConflictingTypes = schema.new({
    id = id.from(_N, "ConflictingTypes"),
    type = "structure",
    traits = {
        [traits.ERROR] = { value = "client" },
    },
    members = {
        message = schema.new({
            id = id.from(_N, "ConflictingTypes", "message"),
            type = "string",
            name = "message",
            target_id = prelude.String.id,
        }),
    },
})

M.UpdateTrafficPolicyInstanceInput = schema.new({
    id = id.from(_N, "UpdateTrafficPolicyInstanceRequest"),
    type = "structure",
    members = {
        Id = schema.new({
            id = id.from(_N, "UpdateTrafficPolicyInstanceInput", "Id"),
            type = "string",
            name = "Id",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
                [traits.HTTP_LABEL] = {},
            },
        }),
        TTL = schema.new({
            id = id.from(_N, "UpdateTrafficPolicyInstanceInput", "TTL"),
            type = "long",
            name = "TTL",
            target_id = prelude.Long.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrafficPolicyId = schema.new({
            id = id.from(_N, "UpdateTrafficPolicyInstanceInput", "TrafficPolicyId"),
            type = "string",
            name = "TrafficPolicyId",
            target_id = prelude.String.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
        TrafficPolicyVersion = schema.new({
            id = id.from(_N, "UpdateTrafficPolicyInstanceInput", "TrafficPolicyVersion"),
            type = "integer",
            name = "TrafficPolicyVersion",
            target_id = prelude.Integer.id,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

M.UpdateTrafficPolicyInstanceOutput = schema.new({
    id = id.from(_N, "UpdateTrafficPolicyInstanceResponse"),
    type = "structure",
    members = {
        TrafficPolicyInstance = schema.new({
            id = id.from(_N, "UpdateTrafficPolicyInstanceOutput", "TrafficPolicyInstance"),
            type = "structure",
            name = "TrafficPolicyInstance",
            target_id = id.from(_N, "TrafficPolicyInstance"),
            target = M.TrafficPolicyInstance,
            traits = {
                [traits.REQUIRED] = {},
            },
        }),
    },
})

-- Fix forward references for recursive schemas
for _, s in pairs(M) do
    if type(s) == "table" and (s.type == "structure" or s.type == "union") then
        local members = rawget(s, "_members")
        if members then
            for _, ms in pairs(members) do
                if (ms.type == "structure" or ms.type == "union") and not rawget(ms, "_target") and ms.target_id then
                    rawset(ms, "_target", M[ms.target_id.name])
                end
            end
        end
    end
end

return M
