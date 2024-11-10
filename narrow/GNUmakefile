-:
	cargo -q b -r --manifest-path ./Cargo.toml
	../target/release/narrow nostril --sec $(shell gnostr-sha256)
	../target/release/narrow nostril --sec $(shell gnostr-sha256) | gnostr-post-event 
