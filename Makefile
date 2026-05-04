SMITHY_LUA_DIR := $(HOME)/git/smithy-lua

.PHONY: generate codegen-deps smithy-build clean

# Full regeneration: build smithy-lua codegen, then run SDK codegen
generate: codegen-deps smithy-build

# Build and publish smithy-lua-codegen to mavenLocal
codegen-deps:
	cd $(SMITHY_LUA_DIR)/codegen && ./gradlew publishToMavenLocal

# Run the SDK smithy build + copy to service/
smithy-build:
	cd codegen && ./gradlew build

clean:
	cd codegen && ./gradlew clean
	rm -rf service/*/
