# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.03.30.491"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.491-1b75fa6/copilot_here-osx-arm64.tar.gz"
      sha256 "e80d6e8bd88d1b5a72c567224c689bfe85ebd3fee7f8f93e130d1d233e3970c2"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.491-1b75fa6/copilot_here-osx-x64.tar.gz"
      sha256 "5b89824c3d479797e0c50bfc95c8833559a611b5c94ad6ccb366ff564163c4ae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.491-1b75fa6/copilot_here-linux-arm64.tar.gz"
      sha256 "b6b2bae2e8196610db0ec41e7fbafa43b7fd867cdd5a4e1e10e2c5be1725f841"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.30.491-1b75fa6/copilot_here-linux-x64.tar.gz"
      sha256 "95d451d777512b3d3580775c5eacba143ae0bea9158c7c4cf864e5a2f395133c"
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
