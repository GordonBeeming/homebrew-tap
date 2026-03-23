# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.03.22.469"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.469-b8db934/copilot_here-osx-arm64.tar.gz"
    sha256 "02e189d19dcd7bf131e886ed0705e857909859d5b8d2aae2c12fec58d2a67a1c"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.469-b8db934/copilot_here-osx-x64.tar.gz"
    sha256 "049d157b28ca33bce0d8a7900346509b40dea9c4c98955cb274865b0c83ea289"
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
