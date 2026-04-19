# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.04.20.548"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.20.548-7725b10/copilot_here-osx-arm64.tar.gz"
      sha256 "c0c47b89ef163d2fdd77566ed1ff8b40b2543e68251b1384d44ad6c30ea704ed"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.20.548-7725b10/copilot_here-osx-x64.tar.gz"
      sha256 "9ff950b13b45b1b0f62d71782e381b4a72b0ba769c5999adb5ef271c018040f2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.20.548-7725b10/copilot_here-linux-arm64.tar.gz"
      sha256 "b495d810825bfa45ca2014a49be87b909a4eb9644191fbd7f81ad8271295388b"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.20.548-7725b10/copilot_here-linux-x64.tar.gz"
      sha256 "b829d06641a6bf47c645eb7fb114466f676e17f3faff2e3548c136d71c83c5fb"
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
