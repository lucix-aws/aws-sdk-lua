local base_client = require("smithy.client")
local defaults = require("smithy.defaults")
local endpoint = require("smithy.endpoint")
local endpoint_rules = require("redshift.endpoint_rules")
local query_protocol = require("smithy.protocol.query")
local schemas = require("redshift.schemas")
local sdk_defaults = require("aws.sdk_defaults")

local M = {}

local Client = {}
Client.__index = Client

Client.invokeOperation = base_client.invokeOperation

function M.new(cfg)
    cfg = cfg or {}
    cfg.service_id = "RedshiftServiceVersion20121201"
    if not cfg.protocol then
        cfg.protocol = query_protocol.new("awsQuery")
    end
    if not cfg.endpoint_provider then
        cfg.endpoint_provider = function(params)
            return endpoint.resolve(endpoint_rules, params)
        end
    end
    if not cfg.auth_scheme_resolver then
        cfg.auth_scheme_resolver = function(operation)
            local options = {}
            for _, scheme_id in ipairs(operation.effective_auth_schemes) do
                if scheme_id == "aws.auth#sigv4" or scheme_id == "aws.auth#sigv4a" then
                    options[#options + 1] = { scheme_id = scheme_id, signer_properties = { signing_name = "redshift", signing_region = cfg.region } }
                else
                    options[#options + 1] = { scheme_id = scheme_id }
                end
            end
            return options
        end
    end
    defaults.resolve_auth_schemes(cfg)
    defaults.resolve_identity_resolvers(cfg)
    defaults.resolve_http_client(cfg)
    defaults.resolve_retry_strategy(cfg)
    sdk_defaults.resolve_identity_resolver(cfg)
    local self = setmetatable(base_client.new(cfg), Client)
    return self
end

function Client:acceptReservedNodeExchange(input, options)
    return self:invokeOperation(input, {
        name = "AcceptReservedNodeExchange",
        input_schema = schemas.AcceptReservedNodeExchangeInput,
        output_schema = schemas.AcceptReservedNodeExchangeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:addPartner(input, options)
    return self:invokeOperation(input, {
        name = "AddPartner",
        input_schema = schemas.AddPartnerInput,
        output_schema = schemas.AddPartnerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:associateDataShareConsumer(input, options)
    return self:invokeOperation(input, {
        name = "AssociateDataShareConsumer",
        input_schema = schemas.AssociateDataShareConsumerInput,
        output_schema = schemas.AssociateDataShareConsumerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:authorizeClusterSecurityGroupIngress(input, options)
    return self:invokeOperation(input, {
        name = "AuthorizeClusterSecurityGroupIngress",
        input_schema = schemas.AuthorizeClusterSecurityGroupIngressInput,
        output_schema = schemas.AuthorizeClusterSecurityGroupIngressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:authorizeDataShare(input, options)
    return self:invokeOperation(input, {
        name = "AuthorizeDataShare",
        input_schema = schemas.AuthorizeDataShareInput,
        output_schema = schemas.AuthorizeDataShareOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:authorizeEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "AuthorizeEndpointAccess",
        input_schema = schemas.AuthorizeEndpointAccessInput,
        output_schema = schemas.AuthorizeEndpointAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:authorizeSnapshotAccess(input, options)
    return self:invokeOperation(input, {
        name = "AuthorizeSnapshotAccess",
        input_schema = schemas.AuthorizeSnapshotAccessInput,
        output_schema = schemas.AuthorizeSnapshotAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchDeleteClusterSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "BatchDeleteClusterSnapshots",
        input_schema = schemas.BatchDeleteClusterSnapshotsInput,
        output_schema = schemas.BatchDeleteClusterSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:batchModifyClusterSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "BatchModifyClusterSnapshots",
        input_schema = schemas.BatchModifyClusterSnapshotsInput,
        output_schema = schemas.BatchModifyClusterSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:cancelResize(input, options)
    return self:invokeOperation(input, {
        name = "CancelResize",
        input_schema = schemas.CancelResizeInput,
        output_schema = schemas.CancelResizeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:copyClusterSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CopyClusterSnapshot",
        input_schema = schemas.CopyClusterSnapshotInput,
        output_schema = schemas.CopyClusterSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createAuthenticationProfile(input, options)
    return self:invokeOperation(input, {
        name = "CreateAuthenticationProfile",
        input_schema = schemas.CreateAuthenticationProfileInput,
        output_schema = schemas.CreateAuthenticationProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCluster(input, options)
    return self:invokeOperation(input, {
        name = "CreateCluster",
        input_schema = schemas.CreateClusterInput,
        output_schema = schemas.CreateClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createClusterParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateClusterParameterGroup",
        input_schema = schemas.CreateClusterParameterGroupInput,
        output_schema = schemas.CreateClusterParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createClusterSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateClusterSecurityGroup",
        input_schema = schemas.CreateClusterSecurityGroupInput,
        output_schema = schemas.CreateClusterSecurityGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createClusterSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "CreateClusterSnapshot",
        input_schema = schemas.CreateClusterSnapshotInput,
        output_schema = schemas.CreateClusterSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createClusterSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "CreateClusterSubnetGroup",
        input_schema = schemas.CreateClusterSubnetGroupInput,
        output_schema = schemas.CreateClusterSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createCustomDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "CreateCustomDomainAssociation",
        input_schema = schemas.CreateCustomDomainAssociationInput,
        output_schema = schemas.CreateCustomDomainAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "CreateEndpointAccess",
        input_schema = schemas.CreateEndpointAccessInput,
        output_schema = schemas.CreateEndpointAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createEventSubscription(input, options)
    return self:invokeOperation(input, {
        name = "CreateEventSubscription",
        input_schema = schemas.CreateEventSubscriptionInput,
        output_schema = schemas.CreateEventSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHsmClientCertificate(input, options)
    return self:invokeOperation(input, {
        name = "CreateHsmClientCertificate",
        input_schema = schemas.CreateHsmClientCertificateInput,
        output_schema = schemas.CreateHsmClientCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createHsmConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "CreateHsmConfiguration",
        input_schema = schemas.CreateHsmConfigurationInput,
        output_schema = schemas.CreateHsmConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createIntegration(input, options)
    return self:invokeOperation(input, {
        name = "CreateIntegration",
        input_schema = schemas.CreateIntegrationInput,
        output_schema = schemas.CreateIntegrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createRedshiftIdcApplication(input, options)
    return self:invokeOperation(input, {
        name = "CreateRedshiftIdcApplication",
        input_schema = schemas.CreateRedshiftIdcApplicationInput,
        output_schema = schemas.CreateRedshiftIdcApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "CreateScheduledAction",
        input_schema = schemas.CreateScheduledActionInput,
        output_schema = schemas.CreateScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSnapshotCopyGrant(input, options)
    return self:invokeOperation(input, {
        name = "CreateSnapshotCopyGrant",
        input_schema = schemas.CreateSnapshotCopyGrantInput,
        output_schema = schemas.CreateSnapshotCopyGrantOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createSnapshotSchedule(input, options)
    return self:invokeOperation(input, {
        name = "CreateSnapshotSchedule",
        input_schema = schemas.CreateSnapshotScheduleInput,
        output_schema = schemas.CreateSnapshotScheduleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createTags(input, options)
    return self:invokeOperation(input, {
        name = "CreateTags",
        input_schema = schemas.CreateTagsInput,
        output_schema = schemas.CreateTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:createUsageLimit(input, options)
    return self:invokeOperation(input, {
        name = "CreateUsageLimit",
        input_schema = schemas.CreateUsageLimitInput,
        output_schema = schemas.CreateUsageLimitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deauthorizeDataShare(input, options)
    return self:invokeOperation(input, {
        name = "DeauthorizeDataShare",
        input_schema = schemas.DeauthorizeDataShareInput,
        output_schema = schemas.DeauthorizeDataShareOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteAuthenticationProfile(input, options)
    return self:invokeOperation(input, {
        name = "DeleteAuthenticationProfile",
        input_schema = schemas.DeleteAuthenticationProfileInput,
        output_schema = schemas.DeleteAuthenticationProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCluster(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCluster",
        input_schema = schemas.DeleteClusterInput,
        output_schema = schemas.DeleteClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteClusterParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteClusterParameterGroup",
        input_schema = schemas.DeleteClusterParameterGroupInput,
        output_schema = schemas.DeleteClusterParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteClusterSecurityGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteClusterSecurityGroup",
        input_schema = schemas.DeleteClusterSecurityGroupInput,
        output_schema = schemas.DeleteClusterSecurityGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteClusterSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "DeleteClusterSnapshot",
        input_schema = schemas.DeleteClusterSnapshotInput,
        output_schema = schemas.DeleteClusterSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteClusterSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "DeleteClusterSubnetGroup",
        input_schema = schemas.DeleteClusterSubnetGroupInput,
        output_schema = schemas.DeleteClusterSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteCustomDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "DeleteCustomDomainAssociation",
        input_schema = schemas.DeleteCustomDomainAssociationInput,
        output_schema = schemas.DeleteCustomDomainAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEndpointAccess",
        input_schema = schemas.DeleteEndpointAccessInput,
        output_schema = schemas.DeleteEndpointAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteEventSubscription(input, options)
    return self:invokeOperation(input, {
        name = "DeleteEventSubscription",
        input_schema = schemas.DeleteEventSubscriptionInput,
        output_schema = schemas.DeleteEventSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHsmClientCertificate(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHsmClientCertificate",
        input_schema = schemas.DeleteHsmClientCertificateInput,
        output_schema = schemas.DeleteHsmClientCertificateOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteHsmConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteHsmConfiguration",
        input_schema = schemas.DeleteHsmConfigurationInput,
        output_schema = schemas.DeleteHsmConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteIntegration(input, options)
    return self:invokeOperation(input, {
        name = "DeleteIntegration",
        input_schema = schemas.DeleteIntegrationInput,
        output_schema = schemas.DeleteIntegrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deletePartner(input, options)
    return self:invokeOperation(input, {
        name = "DeletePartner",
        input_schema = schemas.DeletePartnerInput,
        output_schema = schemas.DeletePartnerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteRedshiftIdcApplication(input, options)
    return self:invokeOperation(input, {
        name = "DeleteRedshiftIdcApplication",
        input_schema = schemas.DeleteRedshiftIdcApplicationInput,
        output_schema = schemas.DeleteRedshiftIdcApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "DeleteResourcePolicy",
        input_schema = schemas.DeleteResourcePolicyInput,
        output_schema = schemas.DeleteResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "DeleteScheduledAction",
        input_schema = schemas.DeleteScheduledActionInput,
        output_schema = schemas.DeleteScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSnapshotCopyGrant(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSnapshotCopyGrant",
        input_schema = schemas.DeleteSnapshotCopyGrantInput,
        output_schema = schemas.DeleteSnapshotCopyGrantOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteSnapshotSchedule(input, options)
    return self:invokeOperation(input, {
        name = "DeleteSnapshotSchedule",
        input_schema = schemas.DeleteSnapshotScheduleInput,
        output_schema = schemas.DeleteSnapshotScheduleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteTags(input, options)
    return self:invokeOperation(input, {
        name = "DeleteTags",
        input_schema = schemas.DeleteTagsInput,
        output_schema = schemas.DeleteTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deleteUsageLimit(input, options)
    return self:invokeOperation(input, {
        name = "DeleteUsageLimit",
        input_schema = schemas.DeleteUsageLimitInput,
        output_schema = schemas.DeleteUsageLimitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:deregisterNamespace(input, options)
    return self:invokeOperation(input, {
        name = "DeregisterNamespace",
        input_schema = schemas.DeregisterNamespaceInput,
        output_schema = schemas.DeregisterNamespaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAccountAttributes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAccountAttributes",
        input_schema = schemas.DescribeAccountAttributesInput,
        output_schema = schemas.DescribeAccountAttributesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeAuthenticationProfiles(input, options)
    return self:invokeOperation(input, {
        name = "DescribeAuthenticationProfiles",
        input_schema = schemas.DescribeAuthenticationProfilesInput,
        output_schema = schemas.DescribeAuthenticationProfilesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusterDbRevisions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusterDbRevisions",
        input_schema = schemas.DescribeClusterDbRevisionsInput,
        output_schema = schemas.DescribeClusterDbRevisionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusterParameterGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusterParameterGroups",
        input_schema = schemas.DescribeClusterParameterGroupsInput,
        output_schema = schemas.DescribeClusterParameterGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusterParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusterParameters",
        input_schema = schemas.DescribeClusterParametersInput,
        output_schema = schemas.DescribeClusterParametersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusters",
        input_schema = schemas.DescribeClustersInput,
        output_schema = schemas.DescribeClustersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusterSecurityGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusterSecurityGroups",
        input_schema = schemas.DescribeClusterSecurityGroupsInput,
        output_schema = schemas.DescribeClusterSecurityGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusterSnapshots(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusterSnapshots",
        input_schema = schemas.DescribeClusterSnapshotsInput,
        output_schema = schemas.DescribeClusterSnapshotsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusterSubnetGroups(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusterSubnetGroups",
        input_schema = schemas.DescribeClusterSubnetGroupsInput,
        output_schema = schemas.DescribeClusterSubnetGroupsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusterTracks(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusterTracks",
        input_schema = schemas.DescribeClusterTracksInput,
        output_schema = schemas.DescribeClusterTracksOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeClusterVersions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeClusterVersions",
        input_schema = schemas.DescribeClusterVersionsInput,
        output_schema = schemas.DescribeClusterVersionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeCustomDomainAssociations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeCustomDomainAssociations",
        input_schema = schemas.DescribeCustomDomainAssociationsInput,
        output_schema = schemas.DescribeCustomDomainAssociationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataShares(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataShares",
        input_schema = schemas.DescribeDataSharesInput,
        output_schema = schemas.DescribeDataSharesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataSharesForConsumer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataSharesForConsumer",
        input_schema = schemas.DescribeDataSharesForConsumerInput,
        output_schema = schemas.DescribeDataSharesForConsumerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDataSharesForProducer(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDataSharesForProducer",
        input_schema = schemas.DescribeDataSharesForProducerInput,
        output_schema = schemas.DescribeDataSharesForProducerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeDefaultClusterParameters(input, options)
    return self:invokeOperation(input, {
        name = "DescribeDefaultClusterParameters",
        input_schema = schemas.DescribeDefaultClusterParametersInput,
        output_schema = schemas.DescribeDefaultClusterParametersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEndpointAccess",
        input_schema = schemas.DescribeEndpointAccessInput,
        output_schema = schemas.DescribeEndpointAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEndpointAuthorization(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEndpointAuthorization",
        input_schema = schemas.DescribeEndpointAuthorizationInput,
        output_schema = schemas.DescribeEndpointAuthorizationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEventCategories(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventCategories",
        input_schema = schemas.DescribeEventCategoriesInput,
        output_schema = schemas.DescribeEventCategoriesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEvents(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEvents",
        input_schema = schemas.DescribeEventsInput,
        output_schema = schemas.DescribeEventsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeEventSubscriptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeEventSubscriptions",
        input_schema = schemas.DescribeEventSubscriptionsInput,
        output_schema = schemas.DescribeEventSubscriptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHsmClientCertificates(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHsmClientCertificates",
        input_schema = schemas.DescribeHsmClientCertificatesInput,
        output_schema = schemas.DescribeHsmClientCertificatesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeHsmConfigurations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeHsmConfigurations",
        input_schema = schemas.DescribeHsmConfigurationsInput,
        output_schema = schemas.DescribeHsmConfigurationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeInboundIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeInboundIntegrations",
        input_schema = schemas.DescribeInboundIntegrationsInput,
        output_schema = schemas.DescribeInboundIntegrationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeIntegrations(input, options)
    return self:invokeOperation(input, {
        name = "DescribeIntegrations",
        input_schema = schemas.DescribeIntegrationsInput,
        output_schema = schemas.DescribeIntegrationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeLoggingStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeLoggingStatus",
        input_schema = schemas.DescribeLoggingStatusInput,
        output_schema = schemas.DescribeLoggingStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeNodeConfigurationOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeNodeConfigurationOptions",
        input_schema = schemas.DescribeNodeConfigurationOptionsInput,
        output_schema = schemas.DescribeNodeConfigurationOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeOrderableClusterOptions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeOrderableClusterOptions",
        input_schema = schemas.DescribeOrderableClusterOptionsInput,
        output_schema = schemas.DescribeOrderableClusterOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describePartners(input, options)
    return self:invokeOperation(input, {
        name = "DescribePartners",
        input_schema = schemas.DescribePartnersInput,
        output_schema = schemas.DescribePartnersOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeRedshiftIdcApplications(input, options)
    return self:invokeOperation(input, {
        name = "DescribeRedshiftIdcApplications",
        input_schema = schemas.DescribeRedshiftIdcApplicationsInput,
        output_schema = schemas.DescribeRedshiftIdcApplicationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReservedNodeExchangeStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedNodeExchangeStatus",
        input_schema = schemas.DescribeReservedNodeExchangeStatusInput,
        output_schema = schemas.DescribeReservedNodeExchangeStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReservedNodeOfferings(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedNodeOfferings",
        input_schema = schemas.DescribeReservedNodeOfferingsInput,
        output_schema = schemas.DescribeReservedNodeOfferingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeReservedNodes(input, options)
    return self:invokeOperation(input, {
        name = "DescribeReservedNodes",
        input_schema = schemas.DescribeReservedNodesInput,
        output_schema = schemas.DescribeReservedNodesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeResize(input, options)
    return self:invokeOperation(input, {
        name = "DescribeResize",
        input_schema = schemas.DescribeResizeInput,
        output_schema = schemas.DescribeResizeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeScheduledActions(input, options)
    return self:invokeOperation(input, {
        name = "DescribeScheduledActions",
        input_schema = schemas.DescribeScheduledActionsInput,
        output_schema = schemas.DescribeScheduledActionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSnapshotCopyGrants(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSnapshotCopyGrants",
        input_schema = schemas.DescribeSnapshotCopyGrantsInput,
        output_schema = schemas.DescribeSnapshotCopyGrantsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeSnapshotSchedules(input, options)
    return self:invokeOperation(input, {
        name = "DescribeSnapshotSchedules",
        input_schema = schemas.DescribeSnapshotSchedulesInput,
        output_schema = schemas.DescribeSnapshotSchedulesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeStorage(input, options)
    return self:invokeOperation(input, {
        name = "DescribeStorage",
        input_schema = schemas.DescribeStorageInput,
        output_schema = schemas.DescribeStorageOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTableRestoreStatus(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTableRestoreStatus",
        input_schema = schemas.DescribeTableRestoreStatusInput,
        output_schema = schemas.DescribeTableRestoreStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeTags(input, options)
    return self:invokeOperation(input, {
        name = "DescribeTags",
        input_schema = schemas.DescribeTagsInput,
        output_schema = schemas.DescribeTagsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:describeUsageLimits(input, options)
    return self:invokeOperation(input, {
        name = "DescribeUsageLimits",
        input_schema = schemas.DescribeUsageLimitsInput,
        output_schema = schemas.DescribeUsageLimitsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableLogging(input, options)
    return self:invokeOperation(input, {
        name = "DisableLogging",
        input_schema = schemas.DisableLoggingInput,
        output_schema = schemas.DisableLoggingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disableSnapshotCopy(input, options)
    return self:invokeOperation(input, {
        name = "DisableSnapshotCopy",
        input_schema = schemas.DisableSnapshotCopyInput,
        output_schema = schemas.DisableSnapshotCopyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:disassociateDataShareConsumer(input, options)
    return self:invokeOperation(input, {
        name = "DisassociateDataShareConsumer",
        input_schema = schemas.DisassociateDataShareConsumerInput,
        output_schema = schemas.DisassociateDataShareConsumerOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableLogging(input, options)
    return self:invokeOperation(input, {
        name = "EnableLogging",
        input_schema = schemas.EnableLoggingInput,
        output_schema = schemas.EnableLoggingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:enableSnapshotCopy(input, options)
    return self:invokeOperation(input, {
        name = "EnableSnapshotCopy",
        input_schema = schemas.EnableSnapshotCopyInput,
        output_schema = schemas.EnableSnapshotCopyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:failoverPrimaryCompute(input, options)
    return self:invokeOperation(input, {
        name = "FailoverPrimaryCompute",
        input_schema = schemas.FailoverPrimaryComputeInput,
        output_schema = schemas.FailoverPrimaryComputeOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getClusterCredentials(input, options)
    return self:invokeOperation(input, {
        name = "GetClusterCredentials",
        input_schema = schemas.GetClusterCredentialsInput,
        output_schema = schemas.GetClusterCredentialsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getClusterCredentialsWithIAM(input, options)
    return self:invokeOperation(input, {
        name = "GetClusterCredentialsWithIAM",
        input_schema = schemas.GetClusterCredentialsWithIAMInput,
        output_schema = schemas.GetClusterCredentialsWithIAMOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getIdentityCenterAuthToken(input, options)
    return self:invokeOperation(input, {
        name = "GetIdentityCenterAuthToken",
        input_schema = schemas.GetIdentityCenterAuthTokenInput,
        output_schema = schemas.GetIdentityCenterAuthTokenOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReservedNodeExchangeConfigurationOptions(input, options)
    return self:invokeOperation(input, {
        name = "GetReservedNodeExchangeConfigurationOptions",
        input_schema = schemas.GetReservedNodeExchangeConfigurationOptionsInput,
        output_schema = schemas.GetReservedNodeExchangeConfigurationOptionsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getReservedNodeExchangeOfferings(input, options)
    return self:invokeOperation(input, {
        name = "GetReservedNodeExchangeOfferings",
        input_schema = schemas.GetReservedNodeExchangeOfferingsInput,
        output_schema = schemas.GetReservedNodeExchangeOfferingsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:getResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "GetResourcePolicy",
        input_schema = schemas.GetResourcePolicyInput,
        output_schema = schemas.GetResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:listRecommendations(input, options)
    return self:invokeOperation(input, {
        name = "ListRecommendations",
        input_schema = schemas.ListRecommendationsInput,
        output_schema = schemas.ListRecommendationsOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyAquaConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ModifyAquaConfiguration",
        input_schema = schemas.ModifyAquaConfigurationInput,
        output_schema = schemas.ModifyAquaConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyAuthenticationProfile(input, options)
    return self:invokeOperation(input, {
        name = "ModifyAuthenticationProfile",
        input_schema = schemas.ModifyAuthenticationProfileInput,
        output_schema = schemas.ModifyAuthenticationProfileOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyCluster(input, options)
    return self:invokeOperation(input, {
        name = "ModifyCluster",
        input_schema = schemas.ModifyClusterInput,
        output_schema = schemas.ModifyClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyClusterDbRevision(input, options)
    return self:invokeOperation(input, {
        name = "ModifyClusterDbRevision",
        input_schema = schemas.ModifyClusterDbRevisionInput,
        output_schema = schemas.ModifyClusterDbRevisionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyClusterIamRoles(input, options)
    return self:invokeOperation(input, {
        name = "ModifyClusterIamRoles",
        input_schema = schemas.ModifyClusterIamRolesInput,
        output_schema = schemas.ModifyClusterIamRolesOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyClusterMaintenance(input, options)
    return self:invokeOperation(input, {
        name = "ModifyClusterMaintenance",
        input_schema = schemas.ModifyClusterMaintenanceInput,
        output_schema = schemas.ModifyClusterMaintenanceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyClusterParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyClusterParameterGroup",
        input_schema = schemas.ModifyClusterParameterGroupInput,
        output_schema = schemas.ModifyClusterParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyClusterSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "ModifyClusterSnapshot",
        input_schema = schemas.ModifyClusterSnapshotInput,
        output_schema = schemas.ModifyClusterSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyClusterSnapshotSchedule(input, options)
    return self:invokeOperation(input, {
        name = "ModifyClusterSnapshotSchedule",
        input_schema = schemas.ModifyClusterSnapshotScheduleInput,
        output_schema = schemas.ModifyClusterSnapshotScheduleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyClusterSubnetGroup(input, options)
    return self:invokeOperation(input, {
        name = "ModifyClusterSubnetGroup",
        input_schema = schemas.ModifyClusterSubnetGroupInput,
        output_schema = schemas.ModifyClusterSubnetGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyCustomDomainAssociation(input, options)
    return self:invokeOperation(input, {
        name = "ModifyCustomDomainAssociation",
        input_schema = schemas.ModifyCustomDomainAssociationInput,
        output_schema = schemas.ModifyCustomDomainAssociationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "ModifyEndpointAccess",
        input_schema = schemas.ModifyEndpointAccessInput,
        output_schema = schemas.ModifyEndpointAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyEventSubscription(input, options)
    return self:invokeOperation(input, {
        name = "ModifyEventSubscription",
        input_schema = schemas.ModifyEventSubscriptionInput,
        output_schema = schemas.ModifyEventSubscriptionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyIntegration(input, options)
    return self:invokeOperation(input, {
        name = "ModifyIntegration",
        input_schema = schemas.ModifyIntegrationInput,
        output_schema = schemas.ModifyIntegrationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyLakehouseConfiguration(input, options)
    return self:invokeOperation(input, {
        name = "ModifyLakehouseConfiguration",
        input_schema = schemas.ModifyLakehouseConfigurationInput,
        output_schema = schemas.ModifyLakehouseConfigurationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyRedshiftIdcApplication(input, options)
    return self:invokeOperation(input, {
        name = "ModifyRedshiftIdcApplication",
        input_schema = schemas.ModifyRedshiftIdcApplicationInput,
        output_schema = schemas.ModifyRedshiftIdcApplicationOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyScheduledAction(input, options)
    return self:invokeOperation(input, {
        name = "ModifyScheduledAction",
        input_schema = schemas.ModifyScheduledActionInput,
        output_schema = schemas.ModifyScheduledActionOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifySnapshotCopyRetentionPeriod(input, options)
    return self:invokeOperation(input, {
        name = "ModifySnapshotCopyRetentionPeriod",
        input_schema = schemas.ModifySnapshotCopyRetentionPeriodInput,
        output_schema = schemas.ModifySnapshotCopyRetentionPeriodOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifySnapshotSchedule(input, options)
    return self:invokeOperation(input, {
        name = "ModifySnapshotSchedule",
        input_schema = schemas.ModifySnapshotScheduleInput,
        output_schema = schemas.ModifySnapshotScheduleOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:modifyUsageLimit(input, options)
    return self:invokeOperation(input, {
        name = "ModifyUsageLimit",
        input_schema = schemas.ModifyUsageLimitInput,
        output_schema = schemas.ModifyUsageLimitOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:pauseCluster(input, options)
    return self:invokeOperation(input, {
        name = "PauseCluster",
        input_schema = schemas.PauseClusterInput,
        output_schema = schemas.PauseClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:purchaseReservedNodeOffering(input, options)
    return self:invokeOperation(input, {
        name = "PurchaseReservedNodeOffering",
        input_schema = schemas.PurchaseReservedNodeOfferingInput,
        output_schema = schemas.PurchaseReservedNodeOfferingOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:putResourcePolicy(input, options)
    return self:invokeOperation(input, {
        name = "PutResourcePolicy",
        input_schema = schemas.PutResourcePolicyInput,
        output_schema = schemas.PutResourcePolicyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rebootCluster(input, options)
    return self:invokeOperation(input, {
        name = "RebootCluster",
        input_schema = schemas.RebootClusterInput,
        output_schema = schemas.RebootClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:registerNamespace(input, options)
    return self:invokeOperation(input, {
        name = "RegisterNamespace",
        input_schema = schemas.RegisterNamespaceInput,
        output_schema = schemas.RegisterNamespaceOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rejectDataShare(input, options)
    return self:invokeOperation(input, {
        name = "RejectDataShare",
        input_schema = schemas.RejectDataShareInput,
        output_schema = schemas.RejectDataShareOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resetClusterParameterGroup(input, options)
    return self:invokeOperation(input, {
        name = "ResetClusterParameterGroup",
        input_schema = schemas.ResetClusterParameterGroupInput,
        output_schema = schemas.ResetClusterParameterGroupOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resizeCluster(input, options)
    return self:invokeOperation(input, {
        name = "ResizeCluster",
        input_schema = schemas.ResizeClusterInput,
        output_schema = schemas.ResizeClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreFromClusterSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "RestoreFromClusterSnapshot",
        input_schema = schemas.RestoreFromClusterSnapshotInput,
        output_schema = schemas.RestoreFromClusterSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:restoreTableFromClusterSnapshot(input, options)
    return self:invokeOperation(input, {
        name = "RestoreTableFromClusterSnapshot",
        input_schema = schemas.RestoreTableFromClusterSnapshotInput,
        output_schema = schemas.RestoreTableFromClusterSnapshotOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:resumeCluster(input, options)
    return self:invokeOperation(input, {
        name = "ResumeCluster",
        input_schema = schemas.ResumeClusterInput,
        output_schema = schemas.ResumeClusterOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:revokeClusterSecurityGroupIngress(input, options)
    return self:invokeOperation(input, {
        name = "RevokeClusterSecurityGroupIngress",
        input_schema = schemas.RevokeClusterSecurityGroupIngressInput,
        output_schema = schemas.RevokeClusterSecurityGroupIngressOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:revokeEndpointAccess(input, options)
    return self:invokeOperation(input, {
        name = "RevokeEndpointAccess",
        input_schema = schemas.RevokeEndpointAccessInput,
        output_schema = schemas.RevokeEndpointAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:revokeSnapshotAccess(input, options)
    return self:invokeOperation(input, {
        name = "RevokeSnapshotAccess",
        input_schema = schemas.RevokeSnapshotAccessInput,
        output_schema = schemas.RevokeSnapshotAccessOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:rotateEncryptionKey(input, options)
    return self:invokeOperation(input, {
        name = "RotateEncryptionKey",
        input_schema = schemas.RotateEncryptionKeyInput,
        output_schema = schemas.RotateEncryptionKeyOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

function Client:updatePartnerStatus(input, options)
    return self:invokeOperation(input, {
        name = "UpdatePartnerStatus",
        input_schema = schemas.UpdatePartnerStatusInput,
        output_schema = schemas.UpdatePartnerStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
