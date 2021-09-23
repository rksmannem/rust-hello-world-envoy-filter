build: hello_world.wasm

hello_world.wasm:
	cargo build --target wasm32-unknown-unknown --release
	cp target/wasm32-unknown-unknown/release/hello_world.wasm ./

.PHONY: clean
clean:
	rm ./hello_world.wasm || true

wasm-build: 
	wasme build precompiled hello_world.wasm --tag hello_world:v0.1
