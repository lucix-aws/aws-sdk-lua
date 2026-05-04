import software.amazon.smithy.model.Model
import software.amazon.smithy.model.node.Node
import software.amazon.smithy.model.shapes.ServiceShape
import software.amazon.smithy.aws.traits.ServiceTrait

val smithyVersion: String by project

buildscript {
    val smithyVersion: String by project
    repositories {
        mavenLocal()
        mavenCentral()
    }
    dependencies {
        "classpath"("software.amazon.smithy:smithy-cli:$smithyVersion")
        "classpath"("software.amazon.smithy:smithy-aws-traits:$smithyVersion")
    }
}

plugins {
    val smithyGradleVersion: String by project
    id("software.amazon.smithy.gradle.smithy-base") version smithyGradleVersion
}

dependencies {
    smithyBuild(project(":smithy-aws-lua-codegen"))
    smithyBuild("software.amazon.smithy:smithy-smoke-test-traits:$smithyVersion")
    smithyBuild("software.amazon.smithy:smithy-aws-smoke-test-model:$smithyVersion")
}

tasks["jar"].enabled = false

// Generates smithy-build.json dynamically by scanning aws-models/.
tasks.register("generate-smithy-build") {
    doLast {
        val projectionsBuilder = Node.objectNodeBuilder()
        val models = project.file("aws-models")

        fileTree(models).filter { it.isFile }.files.forEach eachFile@{ file ->
            val model = Model.assembler()
                    .addImport(file.absolutePath)
                    .assemble().result.get()
            val services: List<ServiceShape> = model.shapes(ServiceShape::class.javaObjectType)
                    .sorted().toList()
            if (services.size != 1) {
                throw Exception("Expected 1 service in ${file.name}, found ${services.size}")
            }
            val service = services[0]
            val serviceTrait = service.getTrait(ServiceTrait::class.javaObjectType).orElse(null)
                    ?: return@eachFile

            val sdkId = serviceTrait.sdkId
                    .replace("-", "")
                    .replace(" ", "")
                    .lowercase()

            val projectionContents = Node.objectNodeBuilder()
                    .withMember("imports", Node.fromStrings(
                            "${models.absolutePath}${File.separator}${file.name}"))
                    .withMember("plugins", Node.objectNode()
                            .withMember("lua-client-codegen", Node.objectNodeBuilder()
                                    .withMember("service", service.id.toString())
                                    .build()))
                    .build()
            projectionsBuilder.withMember("$sdkId.${service.version.lowercase()}", projectionContents)
        }

        file("smithy-build.json").writeText(Node.prettyPrintJson(Node.objectNodeBuilder()
                .withMember("version", "1.0")
                .withMember("projections", projectionsBuilder.build())
                .build()))
    }
}

// Copy generated Lua files from build output to ../../service/
tasks.register("copyToService") {
    doLast {
        val buildOutput = file("build/smithyprojections/sdk-codegen")
        val serviceDir = project.file("../../service")
        serviceDir.mkdirs()

        buildOutput.listFiles()?.forEach { projDir: File ->
            if (!projDir.isDirectory) return@forEach
            val luaOutput = File(projDir, "lua-client-codegen")
            if (!luaOutput.exists()) return@forEach
            luaOutput.listFiles()?.forEach { svcDir: File ->
                if (!svcDir.isDirectory) return@forEach
                val targetDir = File(serviceDir, svcDir.name)
                targetDir.mkdirs()
                svcDir.listFiles()?.forEach { f: File ->
                    f.copyTo(File(targetDir, f.name), overwrite = true)
                }
            }
        }
    }
}

tasks.named("smithyBuild") {
    dependsOn("generate-smithy-build")
}

tasks.named("build") {
    finalizedBy("copyToService")
}
