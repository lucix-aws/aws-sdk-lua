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

SMITHY_LUA_RUNTIME := $(SMITHY_LUA_DIR)/runtime
# Include smithy runtime at both levels:
#   .../runtime/?.lua resolves smithy.endpoint -> runtime/smithy/endpoint.lua
#   .../runtime/smithy/?.lua resolves bare endpoint -> runtime/smithy/endpoint.lua (compat for generated code)
SDK_LUA_PATH := $(SMITHY_LUA_RUNTIME)/?.lua;$(SMITHY_LUA_RUNTIME)/smithy/?.lua;runtime/?.lua;service/?.lua;;

# Run endpoint tests for all services (or SERVICE=sts for one)
test-endpoints:
ifdef SERVICE
	@LUA_PATH="$(SDK_LUA_PATH)" luajit service/$(SERVICE)/test_endpoint_rules.lua
else
	@failed=0; total=0; \
	for f in service/*/test_endpoint_rules.lua; do \
		svc=$$(echo $$f | cut -d/ -f2); \
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

clean:
	cd codegen && ./gradlew clean
	rm -rf service/*/
