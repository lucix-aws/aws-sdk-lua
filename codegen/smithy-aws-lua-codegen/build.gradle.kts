val smithyVersion: String by project

dependencies {
    api("software.amazon.smithy.lua:smithy-lua-codegen:0.1.0")
    api("software.amazon.smithy:smithy-aws-traits:$smithyVersion")
    api("software.amazon.smithy:smithy-aws-iam-traits:$smithyVersion")
    api("software.amazon.smithy:smithy-aws-cloudformation-traits:$smithyVersion")
    api("software.amazon.smithy:smithy-aws-endpoints:$smithyVersion")
}
