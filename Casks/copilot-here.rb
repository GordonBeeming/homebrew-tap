# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.02.19"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-bea3d9f/copilot_here-osx-arm64.tar.gz"
    sha256 "3aff7f454ace5ba6ae2bc4ec7f35c19716b6fa13dbabd5e294f07997aefa6b05"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-bea3d9f/copilot_here-osx-x64.tar.gz"
    sha256 "dac9bde380ddd8a616662202d713c87bbf49d9b6e0b7174907479960ab796f94"
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
