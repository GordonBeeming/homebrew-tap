# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.03.24.472"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.472-4a7957a/copilot_here-osx-arm64.tar.gz"
    sha256 "bd181fc5082b4dd05d996799059e893f61820f200f27331a0ff8467abb79a456"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.472-4a7957a/copilot_here-osx-x64.tar.gz"
    sha256 "0829752bccc8562a78394727caab8752fa53e267f78ca3be34cb04a8522ef3d3"
  end

  name "copilot_here"
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"

  binary "copilot_here"

  caveats <<~EOS
    copilot_here requires Docker, Podman, or OrbStack to be installed and running.

    To enable the shell function wrapper, run:
      copilot_here --install-shells

    Or manually source the shell script in your profile:
      Bash/Zsh: source "$(brew --prefix)/share/copilot_here/copilot_here.sh"
  EOS
end
