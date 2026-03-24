# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.03.24.476"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.476-3d2e852/copilot_here-osx-arm64.tar.gz"
    sha256 "2e28eef74f2423fc51e089fb494d54a75d2ad961d11e111481b5e8b1b7c6285e"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.476-3d2e852/copilot_here-osx-x64.tar.gz"
    sha256 "971dc366ff22cb90376ae8c35823c6b349b6a83cef5072fc1aaf96c73c67dcf1"
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
