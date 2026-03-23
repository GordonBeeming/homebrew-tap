# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.03.22.463"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.463-266de0e/copilot_here-osx-arm64.tar.gz"
      sha256 "3d6696703de5a3aba2f1b781b90606fbf3393976cae1bdb9e6e8b89bf2b78955"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.463-266de0e/copilot_here-osx-x64.tar.gz"
      sha256 "97b41eee7f6463622a9dcc9984e67775ace252af7094cbc9e4cff9c6fc3ca4ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.463-266de0e/copilot_here-linux-arm64.tar.gz"
      sha256 "7102d8a68a0bf1365ae027905ea24dd36def9baed4558415a5b74a40c8afdc80"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.03.22.463-266de0e/copilot_here-linux-x64.tar.gz"
      sha256 "5a190b9f50bb14fd70d49f9e3e7036880817cbd32ff12b6409193b1297b13fee"
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
