# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.04.30.566"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.566-50a48cc/copilot_here-osx-arm64.tar.gz"
      sha256 "013f7fe8bb2226a804cf6fd0901da39bd4a2e3e13a1449c8df8fec5b6b5ddb38"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.566-50a48cc/copilot_here-osx-x64.tar.gz"
      sha256 "c3e2d00cd2e3ff22ecb27fd522b274d529f20ed715fffdc902f5c2b3d3e78c98"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.566-50a48cc/copilot_here-linux-arm64.tar.gz"
      sha256 "8fc6e78c6d37059d2d5f3344fe7c4b2e30a2beecf621e385b3ac36045b2ab95a"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.566-50a48cc/copilot_here-linux-x64.tar.gz"
      sha256 "d640600c9a5baaa42f33b1453b52bcd95394a715909b8c86c90907846fab81dc"
    end
  end

  def install
    bin.install "copilot_here"
  end

  def caveats
    <<~EOS
      copilot_here requires Docker, Podman, or OrbStack to be installed and running.

      To enable the shell function wrapper, run:
        copilot_here --install-shells

      Or manually source the shell script in your profile:
        Bash/Zsh: source "$(brew --prefix)/share/copilot_here/copilot_here.sh"
    EOS
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/copilot_here --version")
  end
end
