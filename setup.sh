#!/bin/bash
apt-get update && apt-get install -y curl build-essential libssl-dev pkg-config
curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
apt-get install -y nodejs
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
curl -sSfL https://release.anza.xyz/stable/install | sh
echo 'export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
cargo install --git https://github.com/project-serum/anchor anchor-cli --locked
npm install -g @metaplex-foundation/cli
npm install @solana/web3.js @project-serum/anchor @solana/spl-token