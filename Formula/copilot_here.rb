# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.02.19"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-fd6557d/copilot_here-osx-arm64.tar.gz"
      sha256 "87a46afb508024c28c5676ea8d47e0116df82ad51abcb1254f70b89fb8d02935"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-fd6557d/copilot_here-osx-x64.tar.gz"
      sha256 "934f9b371459f7c31b06438641db9101a624aa51eae315ca16c72d918fd94fd3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-fd6557d/copilot_here-linux-arm64.tar.gz"
      sha256 "ad9f784b48f0d4ee4faed4a3a36920721fbcb5dc6f7d396b591fd921bdcd3ef3"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-fd6557d/copilot_here-linux-x64.tar.gz"
      sha256 "f0e17e54ce3013a54557dbde4803cb0a631189150951c8361226081c07ef0659"
    end
  end

  depends_on "docker" => :recommended

  def install
    bin.install "copilot_here"
  end

  def caveats
    <<~EOS
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
