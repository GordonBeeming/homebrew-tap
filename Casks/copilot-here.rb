# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.03.22.463"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.463-266de0e/copilot_here-osx-arm64.tar.gz"
    sha256 "3d6696703de5a3aba2f1b781b90606fbf3393976cae1bdb9e6e8b89bf2b78955"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.463-266de0e/copilot_here-osx-x64.tar.gz"
    sha256 "97b41eee7f6463622a9dcc9984e67775ace252af7094cbc9e4cff9c6fc3ca4ed"
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
