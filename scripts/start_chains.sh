export TIMESTAMP=`date +%Y%m%d%H%M%S`

~/daizen.io/polkadot//target/release/polkadot \
	--alice \
	--validator \
	--base-path /tmp/relay/alice \
	--chain ~/daizen.io/chainspec.json \
	--port 30333 \
	--ws-port 9944 \
		1>~/daizen.io/alice.$TIMESTAMP.out 2>&1 & 

ln -fs ~/daizen.io/alice.$TIMESTAMP.out ~/daizen.io/alice.last.out



~/daizen.io/polkadot/target/release/polkadot \
	--bob \
	--validator \
	--base-path /tmp/relay-bob \
	--chain ~/daizen.io/chainspec.json \
	--port 30334 \
	--ws-port 9945 \
		1>~/daizen.io/bob.$TIMESTAMP.out 2>&1 & 

ln -fs ~/daizen.io/bob.$TIMESTAMP.out ~/daizen.io/bob.last.out



~/daizen.io/daizen.io/target/release/parachain-daizen \
--alice \
--collator \
--force-authoring \
--chain ~/daizen.io/daizen.io/raw-parachain-chainspec.json \
--base-path /tmp/parachain/alice \
--port 40333 \
--ws-port 8844 \
-- \
--execution wasm \
--chain ~/daizen.io/chainspec.json \
--port 30343 \
--ws-port 9977 \
1>~/daizen.io/parachain.$TIMESTAMP.out 2>&1 & 

ln -fs ~/daizen.io/parachain.$TIMESTAMP.out ~/daizen.io/parachain.last.out

