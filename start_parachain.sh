./target/release/parachain-template-node \
--alice \
--collator \
--force-authoring \
--chain raw-parachain-chainspec.json \
--base-path /tmp/parachain/alice \
--port 40333 \
--ws-port 8844 \
-- \
--execution wasm \
--chain /tmp/chainspec.json \
--port 30343 \
--ws-port 9977