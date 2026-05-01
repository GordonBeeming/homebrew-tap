# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.04.30.573"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.573-ef8b15e/copilot_here-osx-arm64.tar.gz"
    sha256 "ac8dea5c301b161bab0fc9a8dfc4d8ad8676dd706b3b5bbaf5c2d0c0518fac51"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.573-ef8b15e/copilot_here-osx-x64.tar.gz"
    sha256 "323a887464e3fe565205b58d48890876bd93b6190a32ccae27d109a4ae8ca490"
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
