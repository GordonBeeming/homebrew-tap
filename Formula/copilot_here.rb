# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.10.08.1"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.08.1-428859a/copilot_here-osx-arm64.tar.gz"
      sha256 "f92fad4fc2403e0128d95e3760d52ac9233358e3736a4c4d78f4d834f25dfce7"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.08.1-428859a/copilot_here-osx-x64.tar.gz"
      sha256 "9905c4326e104cf8bb86f5f0a8992f3426bf7c58b77f821ecbed6183bad3a9ce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.08.1-428859a/copilot_here-linux-arm64.tar.gz"
      sha256 "d7509b1153bdf05508944a3d5f5151ff0b11f0b877e3f4ae5b7d119dfdf23ba1"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.10.08.1-428859a/copilot_here-linux-x64.tar.gz"
      sha256 "e64e1993193deccdc1b1202e600af96428b0ebf6c4449b7f307fbc6c150e7497"
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
