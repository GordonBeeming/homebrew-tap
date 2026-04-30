# typed: false
# frozen_string_literal: true

cask "copilot-here" do
  version "2026.04.30.566"

  on_arm do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.566-50a48cc/copilot_here-osx-arm64.tar.gz"
    sha256 "013f7fe8bb2226a804cf6fd0901da39bd4a2e3e13a1449c8df8fec5b6b5ddb38"
  end

  on_intel do
    url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.566-50a48cc/copilot_here-osx-x64.tar.gz"
    sha256 "c3e2d00cd2e3ff22ecb27fd522b274d529f20ed715fffdc902f5c2b3d3e78c98"
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
