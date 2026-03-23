# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.03.22.469"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.469-b8db934/copilot_here-osx-arm64.tar.gz"
      sha256 "02e189d19dcd7bf131e886ed0705e857909859d5b8d2aae2c12fec58d2a67a1c"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.469-b8db934/copilot_here-osx-x64.tar.gz"
      sha256 "049d157b28ca33bce0d8a7900346509b40dea9c4c98955cb274865b0c83ea289"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.469-b8db934/copilot_here-linux-arm64.tar.gz"
      sha256 "82a1c871409fb1411c92d063e045516cf6221441f75a2faa10f537c93181e14a"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.469-b8db934/copilot_here-linux-x64.tar.gz"
      sha256 "c3ea18727949dc5fc13a189c9d31a7ef156e030bbdbf0745398c1522c84c260d"
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
