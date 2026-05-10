SMITHY_LUA_DIR := $(HOME)/git/smithy-lua

.PHONY: generate codegen-deps smithy-build clean sync-models

# Full regeneration: build smithy-lua codegen, then run SDK codegen
generate: codegen-deps smithy-build

# Build and publish smithy-lua-codegen to mavenLocal
codegen-deps:
	cd $(SMITHY_LUA_DIR)/codegen && ./gradlew publishToMavenLocal

# Run the SDK smithy build + copy to service/
smithy-build:
	cd codegen && ./gradlew clean build

TL := $(shell command -v tl 2>/dev/null || echo $(HOME)/.luarocks/bin/tl)

# Generate .lua from .tl files in src/
teal-build:
	@find src -name "*.tl" -print0 | while IFS= read -r -d '' f; do \
		out="$${f%.tl}.lua"; \
		$(TL) gen --gen-target=5.1 --gen-compat=off "$$f" -o "$$out" || exit 1; \
	done
	@echo "teal-build: done"

SMITHY_LUA_RUNTIME := $(SMITHY_LUA_DIR)/runtime
SDK_LUA_PATH := $(SMITHY_LUA_RUNTIME)/?.lua;$(SMITHY_LUA_RUNTIME)/?/init.lua;src/?.lua;src/?/init.lua;;

# Run an example: make run-example EXAMPLE=dynamodb_list_tables
run-example:
	@LUA_PATH="$(SDK_LUA_PATH)" luajit example/$(EXAMPLE).lua

# Run endpoint tests for all services (or SERVICE=sts for one)
test-endpoints:
ifdef SERVICE
	@LUA_PATH="$(SDK_LUA_PATH)" luajit src/aws/sdk/service/$(SERVICE)/test_endpoint_rules.lua
else
	@failed=0; total=0; \
	for f in src/aws/sdk/service/*/test_endpoint_rules.lua; do \
		svc=$$(echo $$f | sed 's|src/aws/sdk/service/\([^/]*\)/.*|\1|'); \
		total=$$((total + 1)); \
		if LUA_PATH="$(SDK_LUA_PATH)" luajit $$f > /dev/null 2>&1; then \
			printf "."; \
		else \
			printf "\nFAIL: $$svc\n"; \
			failed=$$((failed + 1)); \
		fi; \
	done; \
	printf "\n\n$$((total - failed))/$$total services passed\n"; \
	if [ $$failed -gt 0 ]; then exit 1; fi
endif

API_MODELS_REPO := https://github.com/aws/api-models-aws.git
API_MODELS_DIR := /tmp/api-models-aws

# Sync models from the public api-models-aws repo
sync-models:
	@if [ -d "$(API_MODELS_DIR)" ]; then \
		echo "Updating existing clone..."; \
		cd $(API_MODELS_DIR) && git pull --ff-only; \
	else \
		echo "Cloning api-models-aws..."; \
		git clone --depth 1 $(API_MODELS_REPO) $(API_MODELS_DIR); \
	fi
	@rm -rf codegen/sdk-codegen/aws-models/
	@mkdir -p codegen/sdk-codegen/aws-models/
	@for dir in $(API_MODELS_DIR)/models/*/service/*/; do \
		json=$$(find "$$dir" -name '*.json' -maxdepth 1 | head -1); \
		if [ -n "$$json" ]; then \
			svc=$$(echo "$$dir" | sed 's|.*/models/\([^/]*\)/service/.*|\1|'); \
			cp "$$json" "codegen/sdk-codegen/aws-models/$${svc}.json"; \
		fi; \
	done
	@echo "Synced $$(ls codegen/sdk-codegen/aws-models/ | wc -l | tr -d ' ') models"

clean:
	cd codegen && ./gradlew clean
	rm -rf src/aws/sdk/service/*/
