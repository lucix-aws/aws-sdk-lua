local base_client = require("client")
local defaults = require("defaults")
local endpoint = require("endpoint")
local endpoint_rules = require("redshift.endpoint_rules")
local query_protocol = require("protocol.query")
local sdk_defaults = require("sdk_defaults")
local types = require("redshift.types")

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
        input_schema = types.AcceptReservedNodeExchangeInput,
        output_schema = types.AcceptReservedNodeExchangeOutput,
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
        input_schema = types.AddPartnerInput,
        output_schema = types.AddPartnerOutput,
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
        input_schema = types.AssociateDataShareConsumerInput,
        output_schema = types.AssociateDataShareConsumerOutput,
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
        input_schema = types.AuthorizeClusterSecurityGroupIngressInput,
        output_schema = types.AuthorizeClusterSecurityGroupIngressOutput,
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
        input_schema = types.AuthorizeDataShareInput,
        output_schema = types.AuthorizeDataShareOutput,
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
        input_schema = types.AuthorizeEndpointAccessInput,
        output_schema = types.AuthorizeEndpointAccessOutput,
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
        input_schema = types.AuthorizeSnapshotAccessInput,
        output_schema = types.AuthorizeSnapshotAccessOutput,
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
        input_schema = types.BatchDeleteClusterSnapshotsInput,
        output_schema = types.BatchDeleteClusterSnapshotsOutput,
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
        input_schema = types.BatchModifyClusterSnapshotsInput,
        output_schema = types.BatchModifyClusterSnapshotsOutput,
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
        input_schema = types.CancelResizeInput,
        output_schema = types.CancelResizeOutput,
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
        input_schema = types.CopyClusterSnapshotInput,
        output_schema = types.CopyClusterSnapshotOutput,
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
        input_schema = types.CreateAuthenticationProfileInput,
        output_schema = types.CreateAuthenticationProfileOutput,
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
        input_schema = types.CreateClusterInput,
        output_schema = types.CreateClusterOutput,
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
        input_schema = types.CreateClusterParameterGroupInput,
        output_schema = types.CreateClusterParameterGroupOutput,
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
        input_schema = types.CreateClusterSecurityGroupInput,
        output_schema = types.CreateClusterSecurityGroupOutput,
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
        input_schema = types.CreateClusterSnapshotInput,
        output_schema = types.CreateClusterSnapshotOutput,
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
        input_schema = types.CreateClusterSubnetGroupInput,
        output_schema = types.CreateClusterSubnetGroupOutput,
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
        input_schema = types.CreateCustomDomainAssociationInput,
        output_schema = types.CreateCustomDomainAssociationOutput,
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
        input_schema = types.CreateEndpointAccessInput,
        output_schema = types.CreateEndpointAccessOutput,
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
        input_schema = types.CreateEventSubscriptionInput,
        output_schema = types.CreateEventSubscriptionOutput,
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
        input_schema = types.CreateHsmClientCertificateInput,
        output_schema = types.CreateHsmClientCertificateOutput,
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
        input_schema = types.CreateHsmConfigurationInput,
        output_schema = types.CreateHsmConfigurationOutput,
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
        input_schema = types.CreateIntegrationInput,
        output_schema = types.CreateIntegrationOutput,
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
        input_schema = types.CreateRedshiftIdcApplicationInput,
        output_schema = types.CreateRedshiftIdcApplicationOutput,
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
        input_schema = types.CreateScheduledActionInput,
        output_schema = types.CreateScheduledActionOutput,
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
        input_schema = types.CreateSnapshotCopyGrantInput,
        output_schema = types.CreateSnapshotCopyGrantOutput,
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
        input_schema = types.CreateSnapshotScheduleInput,
        output_schema = types.CreateSnapshotScheduleOutput,
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
        input_schema = types.CreateTagsInput,
        output_schema = types.CreateTagsOutput,
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
        input_schema = types.CreateUsageLimitInput,
        output_schema = types.CreateUsageLimitOutput,
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
        input_schema = types.DeauthorizeDataShareInput,
        output_schema = types.DeauthorizeDataShareOutput,
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
        input_schema = types.DeleteAuthenticationProfileInput,
        output_schema = types.DeleteAuthenticationProfileOutput,
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
        input_schema = types.DeleteClusterInput,
        output_schema = types.DeleteClusterOutput,
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
        input_schema = types.DeleteClusterParameterGroupInput,
        output_schema = types.DeleteClusterParameterGroupOutput,
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
        input_schema = types.DeleteClusterSecurityGroupInput,
        output_schema = types.DeleteClusterSecurityGroupOutput,
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
        input_schema = types.DeleteClusterSnapshotInput,
        output_schema = types.DeleteClusterSnapshotOutput,
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
        input_schema = types.DeleteClusterSubnetGroupInput,
        output_schema = types.DeleteClusterSubnetGroupOutput,
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
        input_schema = types.DeleteCustomDomainAssociationInput,
        output_schema = types.DeleteCustomDomainAssociationOutput,
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
        input_schema = types.DeleteEndpointAccessInput,
        output_schema = types.DeleteEndpointAccessOutput,
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
        input_schema = types.DeleteEventSubscriptionInput,
        output_schema = types.DeleteEventSubscriptionOutput,
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
        input_schema = types.DeleteHsmClientCertificateInput,
        output_schema = types.DeleteHsmClientCertificateOutput,
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
        input_schema = types.DeleteHsmConfigurationInput,
        output_schema = types.DeleteHsmConfigurationOutput,
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
        input_schema = types.DeleteIntegrationInput,
        output_schema = types.DeleteIntegrationOutput,
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
        input_schema = types.DeletePartnerInput,
        output_schema = types.DeletePartnerOutput,
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
        input_schema = types.DeleteRedshiftIdcApplicationInput,
        output_schema = types.DeleteRedshiftIdcApplicationOutput,
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
        input_schema = types.DeleteResourcePolicyInput,
        output_schema = types.DeleteResourcePolicyOutput,
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
        input_schema = types.DeleteScheduledActionInput,
        output_schema = types.DeleteScheduledActionOutput,
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
        input_schema = types.DeleteSnapshotCopyGrantInput,
        output_schema = types.DeleteSnapshotCopyGrantOutput,
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
        input_schema = types.DeleteSnapshotScheduleInput,
        output_schema = types.DeleteSnapshotScheduleOutput,
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
        input_schema = types.DeleteTagsInput,
        output_schema = types.DeleteTagsOutput,
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
        input_schema = types.DeleteUsageLimitInput,
        output_schema = types.DeleteUsageLimitOutput,
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
        input_schema = types.DeregisterNamespaceInput,
        output_schema = types.DeregisterNamespaceOutput,
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
        input_schema = types.DescribeAccountAttributesInput,
        output_schema = types.DescribeAccountAttributesOutput,
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
        input_schema = types.DescribeAuthenticationProfilesInput,
        output_schema = types.DescribeAuthenticationProfilesOutput,
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
        input_schema = types.DescribeClusterDbRevisionsInput,
        output_schema = types.DescribeClusterDbRevisionsOutput,
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
        input_schema = types.DescribeClusterParameterGroupsInput,
        output_schema = types.DescribeClusterParameterGroupsOutput,
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
        input_schema = types.DescribeClusterParametersInput,
        output_schema = types.DescribeClusterParametersOutput,
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
        input_schema = types.DescribeClustersInput,
        output_schema = types.DescribeClustersOutput,
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
        input_schema = types.DescribeClusterSecurityGroupsInput,
        output_schema = types.DescribeClusterSecurityGroupsOutput,
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
        input_schema = types.DescribeClusterSnapshotsInput,
        output_schema = types.DescribeClusterSnapshotsOutput,
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
        input_schema = types.DescribeClusterSubnetGroupsInput,
        output_schema = types.DescribeClusterSubnetGroupsOutput,
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
        input_schema = types.DescribeClusterTracksInput,
        output_schema = types.DescribeClusterTracksOutput,
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
        input_schema = types.DescribeClusterVersionsInput,
        output_schema = types.DescribeClusterVersionsOutput,
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
        input_schema = types.DescribeCustomDomainAssociationsInput,
        output_schema = types.DescribeCustomDomainAssociationsOutput,
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
        input_schema = types.DescribeDataSharesInput,
        output_schema = types.DescribeDataSharesOutput,
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
        input_schema = types.DescribeDataSharesForConsumerInput,
        output_schema = types.DescribeDataSharesForConsumerOutput,
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
        input_schema = types.DescribeDataSharesForProducerInput,
        output_schema = types.DescribeDataSharesForProducerOutput,
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
        input_schema = types.DescribeDefaultClusterParametersInput,
        output_schema = types.DescribeDefaultClusterParametersOutput,
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
        input_schema = types.DescribeEndpointAccessInput,
        output_schema = types.DescribeEndpointAccessOutput,
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
        input_schema = types.DescribeEndpointAuthorizationInput,
        output_schema = types.DescribeEndpointAuthorizationOutput,
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
        input_schema = types.DescribeEventCategoriesInput,
        output_schema = types.DescribeEventCategoriesOutput,
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
        input_schema = types.DescribeEventsInput,
        output_schema = types.DescribeEventsOutput,
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
        input_schema = types.DescribeEventSubscriptionsInput,
        output_schema = types.DescribeEventSubscriptionsOutput,
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
        input_schema = types.DescribeHsmClientCertificatesInput,
        output_schema = types.DescribeHsmClientCertificatesOutput,
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
        input_schema = types.DescribeHsmConfigurationsInput,
        output_schema = types.DescribeHsmConfigurationsOutput,
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
        input_schema = types.DescribeInboundIntegrationsInput,
        output_schema = types.DescribeInboundIntegrationsOutput,
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
        input_schema = types.DescribeIntegrationsInput,
        output_schema = types.DescribeIntegrationsOutput,
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
        input_schema = types.DescribeLoggingStatusInput,
        output_schema = types.DescribeLoggingStatusOutput,
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
        input_schema = types.DescribeNodeConfigurationOptionsInput,
        output_schema = types.DescribeNodeConfigurationOptionsOutput,
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
        input_schema = types.DescribeOrderableClusterOptionsInput,
        output_schema = types.DescribeOrderableClusterOptionsOutput,
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
        input_schema = types.DescribePartnersInput,
        output_schema = types.DescribePartnersOutput,
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
        input_schema = types.DescribeRedshiftIdcApplicationsInput,
        output_schema = types.DescribeRedshiftIdcApplicationsOutput,
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
        input_schema = types.DescribeReservedNodeExchangeStatusInput,
        output_schema = types.DescribeReservedNodeExchangeStatusOutput,
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
        input_schema = types.DescribeReservedNodeOfferingsInput,
        output_schema = types.DescribeReservedNodeOfferingsOutput,
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
        input_schema = types.DescribeReservedNodesInput,
        output_schema = types.DescribeReservedNodesOutput,
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
        input_schema = types.DescribeResizeInput,
        output_schema = types.DescribeResizeOutput,
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
        input_schema = types.DescribeScheduledActionsInput,
        output_schema = types.DescribeScheduledActionsOutput,
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
        input_schema = types.DescribeSnapshotCopyGrantsInput,
        output_schema = types.DescribeSnapshotCopyGrantsOutput,
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
        input_schema = types.DescribeSnapshotSchedulesInput,
        output_schema = types.DescribeSnapshotSchedulesOutput,
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
        input_schema = types.DescribeStorageInput,
        output_schema = types.DescribeStorageOutput,
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
        input_schema = types.DescribeTableRestoreStatusInput,
        output_schema = types.DescribeTableRestoreStatusOutput,
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
        input_schema = types.DescribeTagsInput,
        output_schema = types.DescribeTagsOutput,
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
        input_schema = types.DescribeUsageLimitsInput,
        output_schema = types.DescribeUsageLimitsOutput,
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
        input_schema = types.DisableLoggingInput,
        output_schema = types.DisableLoggingOutput,
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
        input_schema = types.DisableSnapshotCopyInput,
        output_schema = types.DisableSnapshotCopyOutput,
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
        input_schema = types.DisassociateDataShareConsumerInput,
        output_schema = types.DisassociateDataShareConsumerOutput,
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
        input_schema = types.EnableLoggingInput,
        output_schema = types.EnableLoggingOutput,
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
        input_schema = types.EnableSnapshotCopyInput,
        output_schema = types.EnableSnapshotCopyOutput,
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
        input_schema = types.FailoverPrimaryComputeInput,
        output_schema = types.FailoverPrimaryComputeOutput,
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
        input_schema = types.GetClusterCredentialsInput,
        output_schema = types.GetClusterCredentialsOutput,
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
        input_schema = types.GetClusterCredentialsWithIAMInput,
        output_schema = types.GetClusterCredentialsWithIAMOutput,
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
        input_schema = types.GetIdentityCenterAuthTokenInput,
        output_schema = types.GetIdentityCenterAuthTokenOutput,
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
        input_schema = types.GetReservedNodeExchangeConfigurationOptionsInput,
        output_schema = types.GetReservedNodeExchangeConfigurationOptionsOutput,
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
        input_schema = types.GetReservedNodeExchangeOfferingsInput,
        output_schema = types.GetReservedNodeExchangeOfferingsOutput,
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
        input_schema = types.GetResourcePolicyInput,
        output_schema = types.GetResourcePolicyOutput,
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
        input_schema = types.ListRecommendationsInput,
        output_schema = types.ListRecommendationsOutput,
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
        input_schema = types.ModifyAquaConfigurationInput,
        output_schema = types.ModifyAquaConfigurationOutput,
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
        input_schema = types.ModifyAuthenticationProfileInput,
        output_schema = types.ModifyAuthenticationProfileOutput,
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
        input_schema = types.ModifyClusterInput,
        output_schema = types.ModifyClusterOutput,
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
        input_schema = types.ModifyClusterDbRevisionInput,
        output_schema = types.ModifyClusterDbRevisionOutput,
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
        input_schema = types.ModifyClusterIamRolesInput,
        output_schema = types.ModifyClusterIamRolesOutput,
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
        input_schema = types.ModifyClusterMaintenanceInput,
        output_schema = types.ModifyClusterMaintenanceOutput,
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
        input_schema = types.ModifyClusterParameterGroupInput,
        output_schema = types.ModifyClusterParameterGroupOutput,
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
        input_schema = types.ModifyClusterSnapshotInput,
        output_schema = types.ModifyClusterSnapshotOutput,
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
        input_schema = types.ModifyClusterSnapshotScheduleInput,
        output_schema = types.ModifyClusterSnapshotScheduleOutput,
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
        input_schema = types.ModifyClusterSubnetGroupInput,
        output_schema = types.ModifyClusterSubnetGroupOutput,
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
        input_schema = types.ModifyCustomDomainAssociationInput,
        output_schema = types.ModifyCustomDomainAssociationOutput,
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
        input_schema = types.ModifyEndpointAccessInput,
        output_schema = types.ModifyEndpointAccessOutput,
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
        input_schema = types.ModifyEventSubscriptionInput,
        output_schema = types.ModifyEventSubscriptionOutput,
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
        input_schema = types.ModifyIntegrationInput,
        output_schema = types.ModifyIntegrationOutput,
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
        input_schema = types.ModifyLakehouseConfigurationInput,
        output_schema = types.ModifyLakehouseConfigurationOutput,
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
        input_schema = types.ModifyRedshiftIdcApplicationInput,
        output_schema = types.ModifyRedshiftIdcApplicationOutput,
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
        input_schema = types.ModifyScheduledActionInput,
        output_schema = types.ModifyScheduledActionOutput,
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
        input_schema = types.ModifySnapshotCopyRetentionPeriodInput,
        output_schema = types.ModifySnapshotCopyRetentionPeriodOutput,
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
        input_schema = types.ModifySnapshotScheduleInput,
        output_schema = types.ModifySnapshotScheduleOutput,
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
        input_schema = types.ModifyUsageLimitInput,
        output_schema = types.ModifyUsageLimitOutput,
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
        input_schema = types.PauseClusterInput,
        output_schema = types.PauseClusterOutput,
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
        input_schema = types.PurchaseReservedNodeOfferingInput,
        output_schema = types.PurchaseReservedNodeOfferingOutput,
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
        input_schema = types.PutResourcePolicyInput,
        output_schema = types.PutResourcePolicyOutput,
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
        input_schema = types.RebootClusterInput,
        output_schema = types.RebootClusterOutput,
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
        input_schema = types.RegisterNamespaceInput,
        output_schema = types.RegisterNamespaceOutput,
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
        input_schema = types.RejectDataShareInput,
        output_schema = types.RejectDataShareOutput,
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
        input_schema = types.ResetClusterParameterGroupInput,
        output_schema = types.ResetClusterParameterGroupOutput,
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
        input_schema = types.ResizeClusterInput,
        output_schema = types.ResizeClusterOutput,
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
        input_schema = types.RestoreFromClusterSnapshotInput,
        output_schema = types.RestoreFromClusterSnapshotOutput,
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
        input_schema = types.RestoreTableFromClusterSnapshotInput,
        output_schema = types.RestoreTableFromClusterSnapshotOutput,
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
        input_schema = types.ResumeClusterInput,
        output_schema = types.ResumeClusterOutput,
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
        input_schema = types.RevokeClusterSecurityGroupIngressInput,
        output_schema = types.RevokeClusterSecurityGroupIngressOutput,
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
        input_schema = types.RevokeEndpointAccessInput,
        output_schema = types.RevokeEndpointAccessOutput,
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
        input_schema = types.RevokeSnapshotAccessInput,
        output_schema = types.RevokeSnapshotAccessOutput,
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
        input_schema = types.RotateEncryptionKeyInput,
        output_schema = types.RotateEncryptionKeyOutput,
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
        input_schema = types.UpdatePartnerStatusInput,
        output_schema = types.UpdatePartnerStatusOutput,
        http_method = "POST",
        http_path = "/",
        effective_auth_schemes = {
            "aws.auth#sigv4",
        },
    }, options)
end

return M
