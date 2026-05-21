# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.05.13.602"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.602-f3f3fab/copilot_here-osx-arm64.tar.gz"
      sha256 "1ca1e59414873949cee58f7c100838c779a84085f446c22ab7ceeb9744673755"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.602-f3f3fab/copilot_here-osx-x64.tar.gz"
      sha256 "55ac8651c4bbfe54f52e1b45a98ffa838ed2ad93c323e754fb08ee5cff3e8bbe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.602-f3f3fab/copilot_here-linux-arm64.tar.gz"
      sha256 "9190a3771547300f90d22717372e3065b3b574226d142af1117ab0705a76f30e"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.05.13.602-f3f3fab/copilot_here-linux-x64.tar.gz"
      sha256 "b6134a4f7be2c33f0303953e29bfa9a3f3e1b20c19bea1c2e051206a9d5fc4b9"
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
