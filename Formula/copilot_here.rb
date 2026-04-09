# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.04.09.526"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.526-4b8fb59/copilot_here-osx-arm64.tar.gz"
      sha256 "b98e6082e66c3b86637fb6493faf57ddacf061ff5579bb549c82288735cc6df9"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.526-4b8fb59/copilot_here-osx-x64.tar.gz"
      sha256 "c00294178aea3cef7b524db069af2dea1e1a7abd90a1ab86c8e8a66263b9bc70"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.526-4b8fb59/copilot_here-linux-arm64.tar.gz"
      sha256 "9a48037e12f72ec224d583839d533a9c46501c4fcf234f793d16273dd68ea5c1"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.09.526-4b8fb59/copilot_here-linux-x64.tar.gz"
      sha256 "5f26604abc47e5136b08637fb0207e4726cebefa9759abac39cca5c84c5cf9b3"
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
