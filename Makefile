PROJECT_SERVER=template-server
PROJECT_CLIENT=client-cli

default: build-debug

all: clean build-release

build-debug:
	@rm -rf target-build && mkdir target-build
	@cargo build
	@mv target/debug/$(PROJECT_SERVER) target-build/$(PROJECT_SERVER)
	@mv target/debug/$(PROJECT_CLIENT) target-build/$(PROJECT_CLIENT)

build-release:
	@rm -rf target-build && mkdir target-build
	@cargo build --release
	@mv target/release/$(PROJECT_SERVER) target-build/$(PROJECT_SERVER)
	@mv target/release/$(PROJECT_CLIENT) target-build/$(PROJECT_CLIENT)

clean:
	@rm -rf target-build && mkdir target-build
	@cargo clean
