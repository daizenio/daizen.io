./target/release/parachain-daizen build-spec --disable-default-bootnode >plain-parachain-chainspec.json
./target/release/parachain-daizen build-spec --chain plain-parachain-chainspec.json --disable-default-bootnode --raw > raw-parachain-chainspec.json

./target/release/parachain-daizen export-genesis-wasm --chain raw-parachain-chainspec.json para-2000-wasm

./target/release/parachain-daizen  export-genesis-state --chain raw-parachain-chainspec.json para-2000-genesis-state


