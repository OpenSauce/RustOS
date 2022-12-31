build:
	cargo build
	cargo bootimage

exec: build
	qemu-system-x86_64 -drive format=raw,file=target/x86_64-rust_os/debug/bootimage-rust_os.bin