# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.04.27.560"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.27.560-e097691/copilot_here-osx-arm64.tar.gz"
      sha256 "0722bc6e4aba749d125798820f608cdfefbe056ab90db45fcc4235537160f728"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.27.560-e097691/copilot_here-osx-x64.tar.gz"
      sha256 "e3a96d1d987d9b13b628b67b73ab7e36b4b9b86d38fbdf355b8073ee161b8c58"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.27.560-e097691/copilot_here-linux-arm64.tar.gz"
      sha256 "5b4db8aebeba4ed7d8322de393d520658d63aace83fd92082fb5fd9b0bad81ca"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.27.560-e097691/copilot_here-linux-x64.tar.gz"
      sha256 "8a28ec499148b946ec2f9166e25b0267197522b325ad28a2f85b263ab0c6d45c"
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
