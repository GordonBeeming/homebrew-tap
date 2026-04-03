# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.03.30.497"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.497-385da09/copilot_here-osx-arm64.tar.gz"
      sha256 "4e6ebee1ac2eac75ddd9c6736bbdfbab94a0069a0c044efa658dd269a0f1d994"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.497-385da09/copilot_here-osx-x64.tar.gz"
      sha256 "62f36cc14a4de29028c5f79284cd8f5d5a383518750e44eff1fbba74476eae69"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.497-385da09/copilot_here-linux-arm64.tar.gz"
      sha256 "c9d52203f1cede58451914d280a1ea85da00ed29461a1e733d3a38ad808a9ad3"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.497-385da09/copilot_here-linux-x64.tar.gz"
      sha256 "39799b1a70031fdda0c848849d5a0f6687d78152cd6e278764c0639d575dee07"
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
