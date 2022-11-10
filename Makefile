all: a b combined

a:
	cargo build --release --manifest-path a/Cargo.toml

b:
	cargo +nightly build --release --manifest-path b/Cargo.toml

combined: a b
	gcc -o combined/tset combined/test.c a/target/release/liba.a b/target/release/libb.a

clean:
	rm -rf a/target b/target
	rm -f combined/tset

.PHONY: a b combined
