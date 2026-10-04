# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.10.04.1"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.04.1-b65db7e/copilot_here-osx-arm64.tar.gz"
      sha256 "bd98b1172d459d9233733b00eb9fa490494714641d98d8b450db0ea14e6a34bf"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.04.1-b65db7e/copilot_here-osx-x64.tar.gz"
      sha256 "afba09c9c6ae1f4ecf6b5c350b0c390cd9103dfae011f6c89fb38f349f40d3b4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.04.1-b65db7e/copilot_here-linux-arm64.tar.gz"
      sha256 "25cb3a4a729d668b7c352fe553d8eff420486cb302ef4137bf9e0995db775952"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.04.1-b65db7e/copilot_here-linux-x64.tar.gz"
      sha256 "a8408e8c5c5e80bce56b4d2ac3e4dcb3f9c815ea18754a502e75b541ec467155"
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
