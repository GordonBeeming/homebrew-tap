# typed: false
# frozen_string_literal: true

class CopilotHere < Formula
  desc "Run GitHub Copilot CLI in a sandboxed Docker container"
  homepage "https://github.com/GordonBeeming/copilot_here"
  version "2026.04.30.569"
  license "FSL-1.1-MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.569-cb6abe5/copilot_here-osx-arm64.tar.gz"
      sha256 "ec2ef9809c10d11147fe2f695cc1d18f3411e75ff873050f773f39fafbe12fd6"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.569-cb6abe5/copilot_here-osx-x64.tar.gz"
      sha256 "cc1963776d42df344f9a1d9a71e03e5d0e46f785176b77e3d77e00accd3c899b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.569-cb6abe5/copilot_here-linux-arm64.tar.gz"
      sha256 "7b65b25abe5e120b6063b6a28ce61103012221508f366094c7d51db8639f5c04"
    else
      url "https://github.com/GordonBeeming/copilot_here/releases/download/cli-v2026.04.30.569-cb6abe5/copilot_here-linux-x64.tar.gz"
      sha256 "10d49c392abb68ba7303198ecbb40f32c48d04ec170f23da8fecc2c15f24209f"
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
