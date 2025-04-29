SWAGGER_URL ?= $(shell bash -c 'read -p "Swagger Url: " swagger_url; echo $$swagger_url')
OUTPUT ?= "packages/data"

generate-openapi:
	@clear
	@if [ ! -f .dart_tool/pub/bin/openapi_generator_cli/openapi-generator-cli ]; then \
		echo "Preparing OpenAPI generator CLI..."; \
		mkdir -p .dart_tool/pub/bin/openapi_generator_cli; \
		curl https://raw.githubusercontent.com/OpenAPITools/openapi-generator/master/bin/utils/openapi-generator-cli.sh > .dart_tool/pub/bin/openapi_generator_cli/openapi-generator-cli; \
		chmod u+x .dart_tool/pub/bin/openapi_generator_cli/openapi-generator-cli; \
	fi
	@echo Remove existing generated files...
	@rm -rf $(OUTPUT)
	@echo Using OpenAPI Generator CLI...
	@.dart_tool/pub/bin/openapi_generator_cli/openapi-generator-cli version
	@echo Generating OpenAPI...
	@.dart_tool/pub/bin/openapi_generator_cli/openapi-generator-cli generate \
		-i $(SWAGGER_URL) -g dart-dio -o $(OUTPUT) \
		--skip-validate-spec --additional-properties=pubName=strategi_mobile_api,pubDescription="API client for Strategi Mobile Api"
	@echo Running packages build_runner...
	@cd $(OUTPUT) && dart run build_runner build --delete-conflicting-outputs
	@echo Running build_runner...
	@dart run build_runner build --delete-conflicting-outputs

