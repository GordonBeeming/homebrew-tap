# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.02.19"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-9ee3e18/copilot_here-osx-arm64.tar.gz"
      sha256 "d12810321818cbf07be2e1b062601384f2974b733530bc1b24fe697f9a4102c6"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-9ee3e18/copilot_here-osx-x64.tar.gz"
      sha256 "31f27cadd53c8ddbe33626250abc82e97770389ba181ca365bf9fd3c0235a78d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-9ee3e18/copilot_here-linux-arm64.tar.gz"
      sha256 "72dc33720b810fc7501d1e75c36be12cca1a3437cdffb1d6daa1e50a0576a98b"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.02.19-9ee3e18/copilot_here-linux-x64.tar.gz"
      sha256 "dfe1d37a1d70ae9805b4604d0f196919682ea26ccf28b1025eb61fe2515a8c6c"
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
