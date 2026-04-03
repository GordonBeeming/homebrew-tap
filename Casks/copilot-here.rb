# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.03.30.497"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.497-385da09/copilot_here-osx-arm64.tar.gz"
    sha256 "4e6ebee1ac2eac75ddd9c6736bbdfbab94a0069a0c044efa658dd269a0f1d994"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.497-385da09/copilot_here-osx-x64.tar.gz"
    sha256 "62f36cc14a4de29028c5f79284cd8f5d5a383518750e44eff1fbba74476eae69"
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
