# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.03.22.456"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.456-db29e3d/copilot_here-osx-arm64.tar.gz"
      sha256 "71a3ceb363dfb7b79d18eea52bfb46d6cf36aa4089834919d2d0c89b6e2c4b63"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.456-db29e3d/copilot_here-osx-x64.tar.gz"
      sha256 "9227cadcb83ef12681e7e1dd8cbfcec7b3fca1c5c4a7335e218fdd2f35c0e1a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.456-db29e3d/copilot_here-linux-arm64.tar.gz"
      sha256 "378831d61729762cc2e2ad092ca8d577e2410a5f3d0f9d4b7ea6a25580a1fe34"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.456-db29e3d/copilot_here-linux-x64.tar.gz"
      sha256 "d23683db204d9e554fa57dcae6506d83443ec19ba0b7f16d252ca6a73c93eecf"
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
