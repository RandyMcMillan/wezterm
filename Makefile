.PHONY: all fmt build check test

all: build build-examples narrow wzsh detox rgit tui/oxker tui/term

.PHONY:detox
detox:
	cargo b -r --manifest-path detox/Cargo.toml
.PHONY:rgit
rgit:
	cargo b -r --manifest-path ./rgit/Cargo.toml
.PHONY:tui/oxker
tui/oxker:
	cargo b -r --manifest-path ./tui/oxker/Cargo.toml
.PHONY:tui/term
tui/term:
	cargo b -r --manifest-path ./tui/term/Cargo.toml
.PHONY:narrow
narrow:
	cargo b -r --manifest-path ./narrow/Cargo.toml
.PHONY:wzsh
wzsh:
	cargo b -r --manifest-path ./wzsh/Cargo.toml
test:
	cargo nextest run

check:
	cargo check

build:
	cargo build $(BUILD_OPTS) -p wezterm
	cargo build $(BUILD_OPTS) -p wezterm-gui
	cargo build $(BUILD_OPTS) -p wezterm-mux-server
	cargo build $(BUILD_OPTS) -p strip-ansi-escapes
build-examples:
	cargo build $(BUILD_OPTS) --examples --features widgets

fmt:
	cargo +nightly fmt

