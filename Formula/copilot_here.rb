# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.03.24.476"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.476-3d2e852/copilot_here-osx-arm64.tar.gz"
      sha256 "2e28eef74f2423fc51e089fb494d54a75d2ad961d11e111481b5e8b1b7c6285e"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.476-3d2e852/copilot_here-osx-x64.tar.gz"
      sha256 "971dc366ff22cb90376ae8c35823c6b349b6a83cef5072fc1aaf96c73c67dcf1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.476-3d2e852/copilot_here-linux-arm64.tar.gz"
      sha256 "5e93abd918d285cc88d7a4d93088220110283d48c794868cb8b4747b61879dff"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.24.476-3d2e852/copilot_here-linux-x64.tar.gz"
      sha256 "4e5dbdc9fe9dfdb059f195ad2aec61d71eacf3313b852267af8e35f6fc39dab3"
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
